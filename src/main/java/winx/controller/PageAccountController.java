package winx.controller;

import java.util.List;

import javax.transaction.Transactional;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import winx.bean.UploadFile;
import winx.entity.KhachHang;
import winx.entity.TaiKhoan;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("")
public class PageAccountController extends CommonMethod {

	@Autowired
	SessionFactory factory;

	@RequestMapping("account")
	public String account(ModelMap model, HttpSession ss) {
		String maKH = (String) ss.getAttribute("maKH");
		if (maKH != null) {
			model.addAttribute("user", getCustomer(maKH));
		}
		return "user/account";
	}

	// nhat

	// Vi
	@RequestMapping(value = "account", params = "btnpw")
	public String changePW(HttpSession ss, @RequestParam("cpassword") String PW, @RequestParam("npassword") String nPW,
			@RequestParam("renpassword") String rnPW, ModelMap model) {

		TaiKhoan tk = (TaiKhoan) ss.getAttribute("tkkh");
		if (tk.getMatKhau().trim().equals(PW) == false) {
			model.addAttribute("message", "Sai mật khẩu!");

		} else {
			if (nPW.equals(rnPW) == false) {
				model.addAttribute("message2", "Mật khẩu không trùng khớp!");
			} else {
				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				tk.setMatKhau(nPW);
				try {
					session.update(tk);
					t.commit();
					model.addAttribute("message3", "Chỉnh sửa thành công!");
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message3", "Chỉnh sửa thất bại!");
				}
			}
		}

		return "user/account";
	}

	// Oanh

	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;

	public List<KhachHang> getCustomer() {
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

		return "user/account";
	}

	// create news

}
