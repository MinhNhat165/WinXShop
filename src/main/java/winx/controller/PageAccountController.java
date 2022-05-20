package winx.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import java.util.Locale;

import javax.transaction.Transactional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import winx.bean.UploadFile;
import winx.entity.DonDat;
import winx.entity.KhachHang;
import winx.entity.TaiKhoan;
import winx.entity.TinMoi;

@Transactional
@Controller

//@RequestMapping("account")
public class PageAccountController {

	@Autowired
	SessionFactory factory;
//	@RequestMapping("account")
//	public String account(ModelMap model) {
//		return "user/account";
//	}

	// nhat

	// Vi
	@RequestMapping(value = "account", params = "btnpw")
	public String changePW(HttpSession ss, @RequestParam("cpassword") String PW, @RequestParam("npassword") String nPW,
			@RequestParam("renpassword") String rnPW, ModelMap model) {
		
		Boolean isErrors = false;
		TaiKhoan tk = (TaiKhoan) ss.getAttribute("tkkh");
		
		if (tk.getMatKhau().trim().equals(PW) == false) {
			model.addAttribute("message1", "Sai mật khẩu!");
		} else {
			if(nPW.trim().isEmpty()) {
				model.addAttribute("message3", "Nội dung không được để trống!");
				isErrors = true;
			}
			
			if(rnPW.trim().isEmpty()) {
				model.addAttribute("message2", "Nội dung không được để trống!");
				isErrors = true;
			}
			
			if(isErrors) {
				return "user/account";
			}
			
			if (nPW.equals(rnPW) == false) {
				model.addAttribute("message2", "Mật khẩu không trùng khớp!");
			} else {
				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				tk.setMatKhau(nPW);
				try {
					session.update(tk);
					t.commit();
					model.addAttribute("message",new Message("success","Chỉnh sửa thành công!"));
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message", new Message("error","Chỉnh sửa thất bại!"));
				}
			}
		}

		return "user/account";
	}

	// Oanh

	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;

	public List<KhachHang> getCustomer() {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		List<KhachHang> list = query.list();
		return list;
	}

	public KhachHang getSingleCustomer(String maKH) {

		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang where MaKH=:MaKH";
		Query query = session.createQuery(hql);
		query.setParameter("MaKH", maKH);
		KhachHang n = (KhachHang) query.list().get(0);

		return n;
	}

	// //

	@RequestMapping(value = "account", method = RequestMethod.GET)
	public String getCustomer(HttpServletRequest request, ModelMap model) {
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		KhachHang cus = getSingleCustomer(maKH);
		List<DonDat> orders = getOrderByCustomerId(maKH);

		model.addAttribute("user", cus);
		model.addAttribute("orders", orders);

		return "user/account";
	}
	
	@RequestMapping(value = "account/update.htm", method = RequestMethod.POST)
	public String uploadAvatar(ModelMap model, @ModelAttribute("kh") KhachHang user, HttpServletRequest request, @RequestParam("profile-img") MultipartFile profileImg)
			throws ParseException {
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (profileImg.isEmpty()) {
			System.out.println("rong");
			return "redirect:/account.htm";
		} else {
			try {
				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String tenAnh = date + profileImg.getOriginalFilename();
				String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
				System.out.println("anh: "+duongDanAnh);

				user = getUser(maKH);
				String hoTen = request.getParameter("hoTen");
				String phai = request.getParameter("phai");
				boolean phaiI = false;
				if (phai.equals("1")) {
					phaiI = true;
				}
				System.out.println(phai);
				System.out.println(phaiI);
				String diaChi = request.getParameter("diaChi");
				String sdt = request.getParameter("sdt");
				String ngaySinhString = request.getParameter("ngaySinh");

				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
				Date ngaySinh = formatter.parse(ngaySinhString);
				
				Session session = factory.openSession();
				Transaction t = session.beginTransaction();

				try {					
					user.setHoTen(hoTen);
					user.setPhai(phaiI);
					System.out.println(user.isPhai());
					user.setDiaChi(diaChi);
					user.setSdt(sdt);
					user.setNgaySinh(ngaySinh);
					user.setAnh("./resources/imgs/"+tenAnh);

					session.merge(user);
					t.commit();
					profileImg.transferTo(new File(duongDanAnh));
					return "redirect:/account.htm";

				} catch (Exception e) {
					System.out.println("errorr " + e);
					t.rollback();
				} finally {
					session.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		KhachHang us = getUser(maKH);
		model.addAttribute("user", us);

		return "user/account";
	}

	public KhachHang getUser(String MaKH) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang where MaKH=:MaKH";
		Query query = session.createQuery(hql);
		query.setParameter("MaKH", MaKH);
		KhachHang u = (KhachHang) query.list().get(0);

		return u;
	}

	// DơnDat
	public List<DonDat> getOrders() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DonDat ";
		Query query = session.createQuery(hql);
		List<DonDat> list = query.list();

		return list;
	}

	public List<DonDat> getOrderByCustomerId(String MaKH) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DonDat where MaKH=:MaKH";
		Query query = session.createQuery(hql);
		query.setParameter("MaKH", MaKH);
		List<DonDat> list = query.list();

		return list;
	}

	public DonDat getSingleOrder(String MaDD) {
		Session session = factory.getCurrentSession();
		DonDat o = (DonDat) session.get(DonDat.class, MaDD);
		return o;
	}

	@RequestMapping(value = "order/change-status/{id}.htm", params = "linkEdit")

	public String updateStatus(ModelMap model, HttpServletRequest request, @PathVariable("id") String id) {
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("donDat", this.getSingleOrder(id));
		DonDat t = this.getSingleOrder(id);
		System.out.println(t.getTrangThai());

		model.addAttribute("btnStatus", "btnEdit");

		List<DonDat> list = getOrderByCustomerId(maKH);
		model.addAttribute("orders", list);

		return "user/account";
	}

	@RequestMapping(value = "order/change-status/{id}.htm", method = RequestMethod.POST)
	public String updateStatus(ModelMap model, @ModelAttribute("donDat") DonDat order, @PathVariable("id") String id) {
		order = this.getSingleOrder(id);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if (order.getTrangThai() == 0) {
				order.setTrangThai(3);
			}
//				
			session.merge(order);
			t.commit();
			System.out.println("success");
			return "redirect:/account.htm";
		} catch (Exception e) {
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}

//			List<DonDat> list = getOrderByCustomerId(maKH);
//			model.addAttribute("orders", list);

		return "user/account";
	}

}
