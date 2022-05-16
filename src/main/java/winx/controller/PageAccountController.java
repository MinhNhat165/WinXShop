package winx.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winx.bean.UploadFile;
import winx.entity.KhachHang;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("account")
public class PageAccountController {

	//nhat
	
	
	
	
	
	
	
	
	//Vi
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//Oanh
	@Autowired
	SessionFactory factory;
	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;
	public List<KhachHang> getCustomer(){
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		List<KhachHang> list = query.list();
		return list;
	}
	public KhachHang getSingleCustomer(String Email) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang where Email=:Email";
		Query query = session.createQuery(hql);
		query.setParameter("Email", Email);
		KhachHang n = (KhachHang) query.list().get(0);

		return n;
	}
	
	// get news
		@RequestMapping(value = "account", method = RequestMethod.GET)
		public String getCustomer(ModelMap model) {
			KhachHang news = new KhachHang();
			model.addAttribute("news", news);
			List<KhachHang> list = getCustomer();
			model.addAttribute("newsList", list);

			return "account/detail";
		}

		// create news
	
	
}
