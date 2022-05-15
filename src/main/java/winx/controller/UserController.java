package winx.controller;

import java.util.List;

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
import winx.entity.SanPham;
import winx.entity.TaiKhoan;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("account")
	public String account(ModelMap model) {
		return "user/account";
	}

	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(ModelMap model) {
		
		model.addAttribute("taikhoan",new TaiKhoan());	
		return "user/login";
	}

	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login2(HttpSession ss,ModelMap model,
			@ModelAttribute("taikhoan") TaiKhoan tk, BindingResult errors) {
		
TaiKhoan tkdn = this.KTtaikhoan(tk);
		
		if(tkdn == null){
			model.addAttribute("message", "Sai thông tin đăng nhập!");
			
			return "user/login";
		}
		
		if(tkdn.getTrangThai() == false) {
			model.addAttribute("message", "Tài khoản đang bị khóa!");
			
			return "user/login";
		}
		if (tkdn.getQuyen()== 1) {
			KhachHang tkkh = this.getKhachHang(tkdn.getEmail());
			if(tkkh != null) {
				ss.setAttribute("user", tkkh);
				ss.setAttribute("vaitro", tkdn.getQuyen());
				return "redirect:/home.htm";
			}else {
				model.addAttribute("message", "Tài khoản không tồn tại!");
				return "user/login";
			}
		} 
		return "user/login";
	}
	
	public TaiKhoan KTtaikhoan(TaiKhoan taiKhoan) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan WHERE quyen = '1' AND email = '" + taiKhoan.getEmail() + "' AND matKhau = '"
				+ taiKhoan.getMatKhau() + "'";
		Query query = session.createQuery(hql);
		List<TaiKhoan> list = query.list();
		
		if(list.size() == 0) {
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
		if(list.size()==0) {
			return null;
		}
		KhachHang kh = list.get(0);
		return kh;
	}
//	@RequestMapping("register")
//	public String register(ModelMap model) {
//		model.addAttribute("taikhoan",new TaiKhoan());
//		
//		return "user/register";
//	}
	
	@RequestMapping("register")
	public String register2(ModelMap model, @ModelAttribute("taikhoan") TaiKhoan tk) {
		Session session = factory.getCurrentSession();
		Transaction t = session.beginTransaction();
		try {
//			session.
//			t.commit();
			
		}catch(Exception e){
			
		}
		return "user/register";
	}
}
