package winx.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import winx.entity.KhachHang;
import winx.entity.TaiKhoan;

@Transactional
@Controller
@RequestMapping("")
public class UserController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model, HttpSession ss) {
		ss.removeAttribute("user");
		ss.removeAttribute("tkkh");
		ss.removeAttribute("maKH");
		model.addAttribute("taikhoan", new TaiKhoan());
		return "user/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login2(HttpSession ss, HttpServletRequest request, ModelMap model,
			@RequestParam("password") String pw, @RequestParam("email") String email) {

		TaiKhoan tkdn = this.KTtaikhoan(email, pw);

		if (tkdn == null) {
			model.addAttribute("message", "Sai thông tin đăng nhập!");
			return "user/login";
		}

		if (tkdn.getTrangThai() == false) {
			model.addAttribute("message", "Tài khoản đang bị khóa!");

			return "user/login";
		}

		if (tkdn.getQuyen() == true) {
			KhachHang kh = this.getKhachHang(tkdn.getEmail());
			if (kh != null) {
				ss.setAttribute("user", kh);
				ss.setAttribute("tkkh", tkdn);
				ss.setAttribute("maKH", kh.getMaKH());
				TaiKhoan tk = (TaiKhoan) ss.getAttribute("tkkh");
				ss.setAttribute("vaitro", tkdn.getQuyen());

				return "redirect:/";
			} else {
				model.addAttribute("message", "Tài khoản không tồn tại!");
				return "user/login";
			}
		} else {
			model.addAttribute("message", "Tài khoản không tồn tại!");
		}
		return "user/login";
	}

	public TaiKhoan KTtaikhoan(String email, String pw) {

		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan WHERE quyen = '1' AND email =:email and matKhau=:pw";
		Query query = session.createQuery(hql);
		query.setParameter("pw", pw);
		query.setParameter("email", email);
		List<TaiKhoan> list = query.list();

		if (list.size() == 0) {
			return null;
		}
		TaiKhoan tk = list.get(0);

		return tk;

	}

	public KhachHang getKhachHang(String email) {
		Session session = factory.getCurrentSession();
		String hql = "from KhachHang where email=:email";
		Query query = session.createQuery(hql);
		query.setParameter("email", email);
		List<KhachHang> list = query.list();
		if (list.size() == 0) {
			return null;
		}
		KhachHang kh = list.get(0);
		return kh;
	}

	@RequestMapping("register")
	public String register(ModelMap model) {
		model.addAttribute("taikhoan", new TaiKhoan());

		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register2(ModelMap model, @ModelAttribute("taikhoan") TaiKhoan tk, BindingResult errors,
			@RequestParam("password") String pw, @RequestParam("repassword") String rpw, HttpSession ss) {
		Session session = factory.openSession();

		Transaction t = session.beginTransaction();
		TaiKhoan tkhoan = (TaiKhoan) session.get(TaiKhoan.class, tk.getEmail());
		if (!pw.equals(rpw)) {
			errors.rejectValue("matKhau", "taikhoan", "Mật khẩu không trùng khớp");
		}
		if (tkhoan != null) {
			errors.rejectValue("email", "taikhoan", "Tài khoản đã tồn tại!");
		}
		if (!errors.hasErrors()) {
			try {
				tk.setTrangThai(true);
				tk.setNgayTao(new Date());
				tk.setQuyen(true);
				tk.setMatKhau(pw);
				session.save(tk);
				t.commit();
				model.addAttribute("taikhoan", new TaiKhoan());
				KhachHang kh = new KhachHang();
				Transaction ts = session.beginTransaction();
				try {
					kh.setMaKH(generatorId("KH", "KhachHang", "maKH"));
					kh.setTaiKhoan(tk);
					kh.setAnh("user.png");
					session.save(kh);
					ss.setAttribute("maKH", kh.getMaKH());
					ts.commit();
					return "redirect:account.htm";
				} catch (Exception e) {
					ts.rollback();
					Transaction td = session.beginTransaction();
					try {
						session.delete(tk);
						td.commit();
					} catch (Exception e2) {
						td.rollback();
					}

				}

				return "user/register";
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		return "user/register";
	}

	@RequestMapping("logout")
	public String logout(HttpSession ss) {
		ss.removeAttribute("user");
		ss.removeAttribute("tkkh");
		ss.removeAttribute("maKH");
		return "redirect:/login.htm";
	}
}
