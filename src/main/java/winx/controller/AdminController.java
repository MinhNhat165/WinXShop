package winx.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("product")
	public String product(ModelMap model) {
		return "admin/product";
	}
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
	@RequestMapping("brand")
	public String brand(ModelMap model) {
		return "admin/brand";
	}
	@RequestMapping("news")
	public String news(ModelMap model) {
		return "admin/news";
	}
	@RequestMapping("login")
	public String login(ModelMap model) {
		return "admin/login";
	}

}
