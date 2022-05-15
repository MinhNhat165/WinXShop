package winx.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.validation.BindingResult;

import winx.bean.UploadFile;
import winx.entity.NhanHang;

@Controller
@RequestMapping("admin")
@Transactional
public class BrandController extends CommonMethod {
	@Autowired
	SessionFactory factory;
	@Autowired
	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;
	

	@RequestMapping(value = "brand", method = RequestMethod.GET)
	public String add(ModelMap model) {
		model.addAttribute("nhanhang", new NhanHang());
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang", list);
		return "admin/brand";
	}


	@RequestMapping(value = "brand/add.htm", method = RequestMethod.GET)
	public String index(ModelMap model) {
		NhanHang nh = new NhanHang();
		nh.setMaNH(generatorId("NH", "NhanHang", "maNH"));
		model.addAttribute("nhanhang", nh);
		model.addAttribute("idModal", "modalShow");
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang", list);
		return "admin/brand";
	}

	@RequestMapping(value = "brand/add.htm", params = "btnAdd", method = RequestMethod.POST)
	public String addBrand(ModelMap model, @ModelAttribute("nhanhang") NhanHang nh,
			BindingResult errors,
			@RequestParam("anhh") MultipartFile anh) {
		
		System.out.println(anh.getOriginalFilename());

			if (this.checkUniqueMaNH(nh.getMaNH()) == false) { 
				errors.rejectValue("maNH","nhanhang", "Mã đã tồn tại!");
				} 
			if (this.checkUniqueTENNH(nh.getTenNH(),nh.getMaNH()) == false) { 
				errors.rejectValue("tenNH", "nhanhang","Nhãn hàng đã tồn tại!");
				}

			if (anh.isEmpty()) {
				errors.rejectValue("anh", "nhanhang","Ảnh không được rỗng!");
			}

		if (!errors.hasErrors()) {
			nh.setTrangThai(true);
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			String tenAnh = date + anh.getOriginalFilename();
			String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
			
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				nh.setAnh(tenAnh);
				session.save(nh);
				t.commit();
				anh.transferTo(new File(duongDanAnh));
				nh.setMaNH(null);
				nh.setTenNH(null);
				nh.setAnh(null);
				return "redirect:/admin/brand.htm";
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		
		
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang", list);
		model.addAttribute("idModal", "modalShow");
		model.addAttribute("nhanhang", nh);
		model.addAttribute("message", "Thêm mới thất bại!");

		return "admin/brand";
	}

	@RequestMapping(value = "brand/update/{id}.htm", params = "linkEdit")

	public String showupdateNhanHang(ModelMap model, @PathVariable("id") String id) {

		
		model.addAttribute("nhanhang", this.getNhanHang(id));
		model.addAttribute("idModal", "modalCreate");
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang", list);
		return "admin/brand";
	}

	@RequestMapping(value = "brand/update/{id}.htm", params = "btnEdit", method = RequestMethod.POST)

	public String UpdateNhanHang(ModelMap model, @ModelAttribute("nhanhang") NhanHang nh,
			RedirectAttributes redirectAttributes, BindingResult errors, @PathVariable("id") String id,
			@RequestParam("anh2") MultipartFile anh) {

		if (this.checkUniqueTENNH(nh.getTenNH(), nh.getMaNH()) == false) {
			errors.rejectValue("tenNH", "nhanhang", "Nhãn hàng đã tồn tại!");
		}
		if (anh.isEmpty()) {
			errors.rejectValue("anh", "nhanhang","Ảnh không được rỗng!");
		}
		if (!errors.hasErrors()) {
			nh.setTrangThai(true);
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			String tenAnh = date + anh.getOriginalFilename();
			String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
			
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				nh.setAnh(tenAnh);
				session.update(nh);
				t.commit();
				anh.transferTo(new File(duongDanAnh));
				nh.setMaNH(null);
				nh.setTenNH(null);
				nh.setAnh(null);
				return "redirect:/admin/brand.htm";
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		model.addAttribute("idModal", "modalCreate");
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang", list);
		return "admin/brand";

	}

	public NhanHang getNhanHang(String MaNH) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanHang where maNH=:MaNH";
		Query query = session.createQuery(hql);
		query.setParameter("MaNH", MaNH);
		NhanHang nh = (NhanHang) query.list().get(0);
		return nh;
	}

	public List<NhanHang> getDSNhanHang() {
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang";
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		return list;
	}

	public boolean checkUniqueMaNH(String id) {
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang where maNH=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<NhanHang> nh = query.list();
		if (nh.size() == 0) {
			return true;
		}
		return false;

	}

	public boolean checkUniqueTENNH(String name, String id) {
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang where tenNH=:name and maNH !=:id";
		Query query = session.createQuery(hql);
		query.setParameter("name", name);
		query.setParameter("id", id);
		List<NhanHang> nh = query.list();
		if (nh.size() == 0) {
			return true;
		}
		return false;

	}

}
