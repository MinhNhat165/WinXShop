package winx.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.xml.crypto.Data;

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

import winx.CommonMethod.ToHql;
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

		pagedListHolder.setPageSize(9);
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (!(maKH == null)) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("DSNH", getAllBrand());
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("bestSales", getTopBestSaleProduct());
		return "user/shop";
	}

	@RequestMapping(value = "", method = RequestMethod.GET, params = "btnSearch")
	public String shopSearch(HttpServletRequest request, ModelMap model) {
		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(
				this.searchProduct(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
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
		String diemBD = request.getParameter("diemBD");
		String diemKT = request.getParameter("diemKT");
		String[] nhanHang = request.getParameterValues("nhanHang");
		String[] dungTich = request.getParameterValues("dungTich");
		String[] loai = request.getParameterValues("loai");

		ToHql toHql = new ToHql();
		String nhanHangHql = "";
		if (!(nhanHang == null))
			nhanHangHql = toHql.toHqlSingleColumOr("nhanHang", nhanHang);

		String dungTichHql = "";
		if (!(dungTich == null))
			dungTichHql = toHql.toHqlSingleColumOr("dungTich", dungTich);

		String loaiHql = "";
		if (!(loai == null))
			loaiHql = toHql.toHqlSingleColumOr("loai", loai);

		String giaHql = toHql.toHqlRangeCondition(giaBD, giaKT, "gia");

		String diemHql = toHql.toHqlRangeCondition(diemBD, diemKT, "diemDG");

		List<String> clauses = new ArrayList<String>();
		clauses.add(loaiHql);
		clauses.add(nhanHangHql);
		clauses.add(dungTichHql);
		clauses.add(giaHql);
		clauses.add(diemHql);

		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(
				getProductList(toHql.toHqlWhereClause(clauses), 0));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
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
		String hql = "FROM SanPham where slt > 0 AND tenSP LIKE :tenSP";
		Query query = session.createQuery(hql);
		query.setParameter("tenSP", "%" + tenSP + "%");
		List<SanPham> list = query.list();
		return list;
	}

}
