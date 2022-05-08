package winx.controller;

import java.util.Date;
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

import winx.entity.KhachHang;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("/admin/")
public class NewsController {
	@Autowired
	SessionFactory factory;
	
	public List<TinMoi> getNews() {
		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi";
		Query query = session.createQuery(hql);
		List<TinMoi> list = query.list();	
		return list;
	}
	public TinMoi getSingleNews(String MaTin) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi where MaTin=:MaTin";
		Query query = session.createQuery(hql);
		query.setParameter("MaKH", MaTin);
		TinMoi n = (TinMoi) query.list().get(0);
		
		return n;
	}
	//get news
	@RequestMapping(value="news",method=RequestMethod.GET)
	public String getNews(ModelMap model) {
		List<TinMoi> list = getNews();
		model.addAttribute("newsList",list);
		
		return "admin/news";
	}
	//create news
	@RequestMapping(value="news", method=RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("news") TinMoi news) { 
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Date date = new Date();
			news.ngayTao = date;
			news.trangThai = 1;
			session.save(news);
			t.commit();
			model.addAttribute("message","Thêm mới thành công!");
		}
		catch(Exception e) {
			t.rollback();
			model.addAttribute("message","Thêm mới thất bại!");
		}
		finally {
			session.close();
		}
		List<TinMoi> list = getNews();
		model.addAttribute("newsList",list);
		
		return "admin/news";
	}
	//update news
	
	@RequestMapping(value="news/update.htm", method=RequestMethod.POST)
	public String updateUser(@ModelAttribute("news") TinMoi news, ModelMap model) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Date date = new Date();
			news.ngayTao = date;
			news.trangThai = 1;
			session.update(news);
			t.commit();
			model.addAttribute("message","Sửa thành công!");
		}
		catch(Exception e) {
			t.rollback();
			model.addAttribute("message","Sửa thất bại!");
		}
		finally {
			session.close();
		}
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);
		
		return "admin/news";
	}
	
}
