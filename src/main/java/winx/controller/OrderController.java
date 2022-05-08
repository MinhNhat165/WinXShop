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
import org.springframework.web.bind.annotation.RequestMethod;

import winx.entity.DonDat;

@Transactional
@Controller
@RequestMapping("/admin/")
public class OrderController {
	@Autowired
	SessionFactory fa;
	
	public List<DonDat> getOrders() {
		Session session = fa.getCurrentSession();
		String hql = "FROM DonDat";
		Query query = session.createQuery(hql);
		List<DonDat> list = query.list();
		
		return list;
	}
	//get list order
	@RequestMapping(value="order", method=RequestMethod.GET)
	public String getOrders(ModelMap model) {
		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);
		
		return "admin/order";
	}
}
