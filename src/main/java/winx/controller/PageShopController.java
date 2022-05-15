package winx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winx.entity.SanPham;

@Transactional
@Controller
@RequestMapping("shop")
public class PageShopController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap model) {
		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(getAllProduct());
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);

		pagedListHolder.setPageSize(12);
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (!(maKH == null)) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("DSNH", getAllBrand());
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "user/shop";
	}

	@RequestMapping(value = "", method = RequestMethod.GET, params = "btnSearch")
	public String shopSearch(HttpServletRequest request, ModelMap model) {
		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(
				this.searchProduct(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(10);
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (!(maKH == null)) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("DSNH", getAllBrand());
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "user/shop";
	}

	@RequestMapping(value = "", method = RequestMethod.GET, params = "btnFilter")
	public String filterShop(HttpServletRequest request, ModelMap model) {
		// get value filter
		String giaBD = request.getParameter("giaBD");
		String giaKT = request.getParameter("giaKT");
		String[] nhanHang = request.getParameterValues("nhanHang");
		String[] dungTich = request.getParameterValues("dungTich");
		System.out.println(dungTich);

		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(
				this.searchProduct(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(10);
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (!(maKH == null)) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("DSNH", getAllBrand());
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "user/shop";
	}

	public List<SanPham> searchProduct(String tenSP) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham where tenSP LIKE :tenSP";
		Query query = session.createQuery(hql);
		query.setParameter("tenSP", "%" + tenSP + "%");
		List<SanPham> list = query.list();
		return list;
	}

}
