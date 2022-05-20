package winx.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.DonDat;
import winx.entity.KhachHang;
import winx.entity.TaiKhoan;

@Transactional
@Controller
@RequestMapping("/admin/")
public class CustomerController {
	@Autowired
	SessionFactory fa;
	
		
	public List<KhachHang> getUsers() {
		Session session = fa.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		List<KhachHang> list = query.list();	
		return list;
	}
	public KhachHang getUser(String MaKH) {
		Session session = fa.getCurrentSession();
		String hql = "FROM KhachHang where MaKH=:MaKH";
		Query query = session.createQuery(hql);
		query.setParameter("MaKH", MaKH);
		KhachHang u = (KhachHang) query.list().get(0);
		
		return u;
	}
	//get list customer
	@RequestMapping(value="customer", method=RequestMethod.GET)
	public String getUsers(ModelMap model) {
		KhachHang customer = new KhachHang();
		List<KhachHang> list = getUsers();
		model.addAttribute("users", list);
		
		return "admin/customer";
	}
	
	//update customer
	@RequestMapping(value="customer/{MaKH}.htm", method=RequestMethod.GET)
	public String updateAccount(ModelMap model, @ModelAttribute("user") KhachHang user) {
		
		return "admin/customer";	
	}
	@RequestMapping(value="account/{MaKH}.htm", method=RequestMethod.POST)
	public String update_Account(ModelMap model,@ModelAttribute("user") KhachHang user,@PathVariable("MaKH") String maKH) {
		Session session = fa.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message","Update thành công!");
		}
		catch(Exception e) {
			t.rollback();
			model.addAttribute("message","Update thất bại!");			
		}
		finally {
			session.close();
		}

		List<KhachHang> list = getUsers();
		model.addAttribute("users", list);
		
		return "admin/customer";	
	}
	@RequestMapping(value="customer/{id}.htm",params="linkShow")
		
		public String showshowProduct(@PathVariable("id") String id,
				ModelMap model) {
			model.addAttribute("user",this.getUser(id));
			model.addAttribute("idModal", "modalShow");
			
			List<KhachHang> list = getUsers();
			model.addAttribute("users", list);
			
			return "admin/customer";
		}
	@RequestMapping(value="change-status/{email}.htm",params="linkEdit")
	
	public String updateStatus(ModelMap model,
			@PathVariable("email") String email) {
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("taiKhoan",this.getTaiKhoan(email));
		TaiKhoan t = this.getTaiKhoan(email);
		System.out.println(t.getTrangThai());
//		model.addAttribute("status","true");
		model.addAttribute("btnStatus", "btnEdit");
		
		List<KhachHang> list = getUsers();
		model.addAttribute("users", list);
		
		return "admin/customer";
	}

	@RequestMapping(value="change-status/{email}.htm",params="btnEdit", method=RequestMethod.POST)
	public String updateStatus(ModelMap model,@ModelAttribute("taiKhoan") TaiKhoan taiKhoan,RedirectAttributes redirectAttributes) {
		Session session = fa.openSession();
		Transaction t = session.beginTransaction();	
		System.out.println("???????"+taiKhoan.getEmail());
		System.out.println("???????"+taiKhoan.getQuyen());
		try {
			String emailTaiKhoan = taiKhoan.getEmail();
			taiKhoan = getTaiKhoan(emailTaiKhoan);
			if(taiKhoan.getTrangThai()) {
				taiKhoan.setTrangThai(false);
			} else {
				taiKhoan.setTrangThai(true);
			}
			session.update(taiKhoan);
			t.commit();
			redirectAttributes.addFlashAttribute("message",
					new Message("success","Đổi trạng thái thành công"));
			System.out.println("success");
			return "redirect:/admin/customer.htm";
		}
		catch(Exception e) {
			System.out.println(e);
			t.rollback();
		}
		finally {
			session.close();
		}

		List<KhachHang> list = getUsers();
		model.addAttribute("users", list);
		model.addAttribute("message",
				new Message("success","Đổi trạng thái thất bại"));
		
		return "admin/customer";	
	}
	
	public TaiKhoan getTaiKhoan(String email) {
		Session session = fa.getCurrentSession();
		String hql = "from TaiKhoan where email=:email";
		Query query = session.createQuery(hql);
		query.setParameter("email", email);
		TaiKhoan sp = (TaiKhoan)query.list().get(0);
		return sp;
		
	}
}
