package winx.controller;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.GioHang_SanPham;
import winx.entity.KhuyenMai;
import winx.entity.NhanHang;
import winx.entity.SanPham;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("home")
public class PageHomeController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(ModelMap model, HttpSession ss) {
		ss.setAttribute("maKH", "KH000001");
		List<TinMoi> newsList = this.getAllNews();
		List<NhanHang> brandList = this.getAllBrand();
		List<SanPham> productList = this.getRandomProduct(8);
		List<SanPham> newProductList = this.getProductList("WHERE DATEDIFF(day, ngayThem, getdate()) < 5 and slt > 0",
				0);
		List<SanPham> bestSaleProductList = this.getTopBestSaleProduct();
		model.addAttribute("newsList", newsList);
		model.addAttribute("brandList", brandList);
		model.addAttribute("productList", productList);
		model.addAttribute("saleList", getSales(2));
		model.addAttribute("user", getCustomer("KH000002"));
		model.addAttribute("newProductList", newProductList);
		model.addAttribute("bestSaleProductList", bestSaleProductList);
		return "user/index";
	}

	public List<KhuyenMai> getSales(int number) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhuyenMai where trangThai = '1' Order by maKM desc";
		Query query = session.createQuery(hql);
		query.setMaxResults(number);
		List<KhuyenMai> list = query.list();
		return list;
	}

}
