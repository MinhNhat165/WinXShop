
package winx.controller;

import java.net.http.HttpResponse;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winx.entity.TaiKhoan;

@Transactional
@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("dashboard")
	public String index(ModelMap model) {
		return "admin/index";
	}

//	@RequestMapping("product")
//	public String product(ModelMap model) {
//		return "admin/product";
//	}
	@RequestMapping("customer")
	public String customer(ModelMap model) {
		return "admin/customer";
	}

	@RequestMapping("order")
	public String order(ModelMap model) {
		return "admin/order";
	}

	@RequestMapping("sale")
	public String sale(ModelMap model) {
		return "admin/sale";
	}

//	@RequestMapping("brand")
//	public String brand(ModelMap model) {
//		return "admin/brand";
//	}
	@RequestMapping("news")
	public String news(ModelMap model) {
		return "admin/news";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		TaiKhoan taiKhoan = new TaiKhoan();
		model.addAttribute("TK", taiKhoan);
		return "admin/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String handleLogin(ModelMap model, @ModelAttribute("TK") TaiKhoan taiKhoan, HttpSession ss,
			BindingResult result) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan WHERE email = '" + taiKhoan.getEmail() + "' AND matKhau = '" + taiKhoan.getMatKhau()
				+ "'";
		Query query = session.createQuery(hql);
		if (query.list().size() > 0) {
			ss.setAttribute("admin", taiKhoan.getEmail());
		} else {
			result.rejectValue("matKhau", "TK", "Tài khoản hoặc mật khẩu không đúng");
			ss.removeAttribute("admin");
			return "admin/login";
		}

		return "redirect:/admin/dashboard.htm";
	}
	@RequestMapping(value = "logout") 
	public String logout(HttpSession ss) {
		ss.removeAttribute("admin");
		return "redirect:/admin/login";
	}

}
