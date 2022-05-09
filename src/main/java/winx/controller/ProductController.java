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

import winx.entity.NhanHang;
import winx.entity.SanPham;

@Controller
@Transactional
@RequestMapping("admin")
public class ProductController {

	@Autowired
	SessionFactory factory;
	
@RequestMapping(value="product", method=RequestMethod.GET)
	
	public String index(ModelMap model) {
		model.addAttribute("sanpham",new SanPham());
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		return "admin/product";
	}
	
	
	@RequestMapping(value="product/add.htm", method=RequestMethod.GET)
	
	public String insert(ModelMap model) {
		model.addAttribute("sanpham",new SanPham());
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("btnStatus","btnAdd");
		return "admin/product";
	}
	
	@RequestMapping(value="product/add.htm",params="btnAdd",method=RequestMethod.POST)
	
	public String insertProduct(@ModelAttribute("sanpham") SanPham sp,ModelMap model) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		sp.setNgayThem(new Date());
		try {
			session.save(sp);
			t.commit();
			model.addAttribute("sanpham",new SanPham());
		}
		catch(Exception e) {
			t.rollback();
		
		}
		finally {
			session.close();
		}
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		return "admin/product";
		
	}
	
	@RequestMapping(value="product/update/{id}.htm",params="linkEdit")
	
	public String showupdateProduct(ModelMap model,
			@PathVariable("id") String id) {
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("sanpham",this.getSanPham(id));	
		model.addAttribute("btnStatus", "btnEdit");
		
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		
		return "admin/product";
	}
	
	
	@RequestMapping(value="product/update/{id}.htm",params="btnEdit", method=RequestMethod.POST)
	
	public String updateProduct(@ModelAttribute("sanpham") SanPham sp) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(sp);
			t.commit();
		}
		catch(Exception e) {
			t.rollback();
		}
		finally {
			session.close();
		}
		
		return "redirect:/admin/product.htm";
	}
	
	@RequestMapping(value="product/show/{id}.htm",params="linkShow")
	
	public String showshowProduct(@PathVariable("id") String id,
			ModelMap model) {
		model.addAttribute("sanpham",this.getSanPham(id));
		model.addAttribute("idModal", "modalShow");
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		
		return "admin/product";
	}
	
	
	
	@ModelAttribute("dsnhanhang")
	public List<NhanHang> getdsNhanHang() {
		Session session = factory.getCurrentSession();
		String hql = " from NhanHang";
		Query query = session.createQuery(hql);
		List<NhanHang> nh =  query.list();
		return nh;
	}
	
	public SanPham getSanPham(String id) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham where maSP=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		SanPham sp = (SanPham)query.list().get(0);
		return sp;
		
	}
	public List<SanPham> getdsSanPham() {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		
		return list;
	}
}
