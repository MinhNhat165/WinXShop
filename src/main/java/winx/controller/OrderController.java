package winx.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
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
import winx.entity.TaiKhoan;

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
	public DonDat getOrder(String MaDD) {
		Session session = fa.getCurrentSession();
		DonDat o = (DonDat) session.get(DonDat.class, MaDD);
		return o;
	}
	//get list order
	@RequestMapping(value="order", method=RequestMethod.GET)
	public String getOrders(ModelMap model) {
		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);
		
		return "admin/order";
	}
@RequestMapping(value="order/change-status/{id}.htm",params="linkEdit")
	
	public String updateStatus(ModelMap model,
			@PathVariable("id") String id) {
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("order",this.getOrder(id));
		
		model.addAttribute("btnStatus", "btnEdit");
		
		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);
		
		return "admin/order";
	}

	@RequestMapping(value="order/change-status/{id}.htm",params="btnEdit", method=RequestMethod.POST)
	public String updateStatus(HttpServletRequest request,  ModelMap model, @PathVariable("id") String id) {
		DonDat order = getOrder(id);
		String trangThai = request.getParameter("trangThai");
		order.setTrangThai(Integer.parseInt(trangThai));
		Session session = fa.openSession();
		Transaction t = session.beginTransaction();	
		try {

			session.update(order);
			t.commit();
			System.out.println("success");
			return "redirect:/admin/order.htm";
		}
		catch(Exception e) {
			System.out.println(e);
			t.rollback();
		}
		finally {
			session.close();
		}

		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);
		
		return "admin/order";	
	}
}
