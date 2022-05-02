package winx.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import winx.entity.SanPham;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("home")
	public String home(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from TinMoi";
		Query query = session.createQuery(hql);
		List<TinMoi> list = query.list();
		model.addAttribute("newsList", list);
		hql = "from SanPham";
		query = session.createQuery(hql);
		List<SanPham> dsSP = query.list();
		model.addAttribute("dsSP", dsSP);
		return "user/index";
	}
	@RequestMapping("checkout")
	public String Checkout (ModelMap model) {
		return "user/checkout";
	}
	@RequestMapping("shop")
	public String Shop (ModelMap model) {
		return "user/shop";
	}
	
	@RequestMapping("product-detail")
	public String productDetail (ModelMap model) {
		return "user/product-detail";
	}
	@RequestMapping("cart")
	public String cart (ModelMap model) {
		return "user/cart";
	}
	@RequestMapping("account")
	public String account (ModelMap model) {
		return "user/account";
	}
	@RequestMapping("login")
	public String login (ModelMap model) {
		return "user/login";
	}
	@RequestMapping("register")
	public String register (ModelMap model) {
		return "user/register";
	}
}
