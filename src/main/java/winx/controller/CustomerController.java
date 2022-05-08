package winx.controller;

import java.util.List;

import javax.transaction.Transactional;

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

import winx.entity.DonDat;
import winx.entity.KhachHang;

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

		KhachHang kh = getUser(maKH);
		model.addAttribute("user",kh);
		
		return "user/account";	
	}
	
}
