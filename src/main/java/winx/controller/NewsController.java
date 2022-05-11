package winx.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

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

import winx.bean.UploadFile;
import winx.entity.KhachHang;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("admin")
public class NewsController {
	@Autowired
	SessionFactory factory;
	@Autowired
	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;

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

	// get news
	@RequestMapping(value = "news", method = RequestMethod.GET)
	public String getNews(ModelMap model) {
		TinMoi news = new TinMoi();
		model.addAttribute("news", news);
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);

		return "admin/news";
	}

	// create news
	@RequestMapping(value = "news", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("news") TinMoi news, BindingResult result,

			@RequestParam("anh") MultipartFile anh) {

		if (anh.isEmpty()) {
			System.out.println("rong");

		} else {
			try {

				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String tenAnh = date + anh.getOriginalFilename();
				String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
				System.out.println(duongDanAnh);

				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				try {
					Date dateNow = new Date();
					news.ngayTao = dateNow;
					news.trangThai = 1;
					news.setAnh(tenAnh);
					session.save(news);
					t.commit();
					anh.transferTo(new File(duongDanAnh));
					model.addAttribute("message", "Thêm mới thành công!");
				} catch (Exception e) {
					t.rollback();
					System.out.println(e.getCause());
					model.addAttribute("message", "Thêm mới thất bại!");
				} finally {
					session.close();
				}

			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);

		return "admin/news";
	}
	// update news

	@RequestMapping(value = "news/update.htm", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("news") TinMoi news, ModelMap model) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Date date = new Date();
			news.ngayTao = date;
			news.trangThai = 1;
			session.update(news);
			t.commit();
			model.addAttribute("message", "Sửa thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Sửa thất bại!");
		} finally {
			session.close();
		}
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);

		return "admin/news";
	}

}
