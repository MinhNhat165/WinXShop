package winx.controller;


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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.NhanHang;
@Controller
@RequestMapping("admin")
@Transactional
public class BrandController {
	@Autowired
	SessionFactory factory;
	
	
	@RequestMapping(value="brand/add.htm",method=RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("nhanhang", new NhanHang()); 
		model.addAttribute("idModal", "modalShow");
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang",list);
		return "admin/brand";
	}
	
	@RequestMapping(value="brand",method=RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("nhanhang", new NhanHang()); 
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang",list);
		return "admin/brand";
	}
	
	@RequestMapping(value="brand",params="btnAdd", method=RequestMethod.POST)
	public String insertBrand(ModelMap model,
		   @ModelAttribute("nhanhang") NhanHang nh) { 
		nh.setTrangThai(true);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(nh);
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
		nh.setMaNH(null);
		nh.setTenNH(null);
		nh.setAnh(null);
		
		return "admin/brand";
	}
	
	@RequestMapping(value="brand/update/{id}.htm",params="linkEdit")
	
	public String showupdateNhanHang(ModelMap model,
			@PathVariable("id") String id) {
	
		model.addAttribute("nhanhang",this.getNhanHang(id));
		model.addAttribute("idModal", "modalCreate");
		List<NhanHang> list = getDSNhanHang();
		model.addAttribute("dsnhanhang",list);
		return "admin/brand";
	}
	
	
	@RequestMapping(value="brand/update/{id}.htm",params="btnEdit", method=RequestMethod.POST)
	
	public String UpdateNhanHang(ModelMap model,@ModelAttribute("nhanhang") NhanHang nh,RedirectAttributes redirectAttributes ) {
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(nh);
			t.commit();
			redirectAttributes.addFlashAttribute("message","ok");
		}
		catch( Exception e ){
			t.rollback();
			redirectAttributes.addFlashAttribute("message","wwhowwho");
			
		}
		finally {
			session.close();
		}
		return "redirect:/admin/brand.htm";
	}
	
	
	public NhanHang getNhanHang(String MaNH) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhanHang where maNH=:MaNH";
		Query query = session.createQuery(hql);
		query.setParameter("MaNH", MaNH);
		NhanHang nh = (NhanHang) query.list().get(0);
		return nh;
	}
	public List<NhanHang> getDSNhanHang(){
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang";
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		return list;
	}
	
}
