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
		model.addAttribute("sortBy", "0");
		model.addAttribute("limit", "9");
		return "user/shop";
	}

	@RequestMapping(value = "", method = RequestMethod.GET, params = "btnSearch")
	public String shopSearch(HttpServletRequest request, ModelMap model) {
		String theLoai = request.getParameter("theLoai");
		String theLoaiHql = "";
		if (!theLoai.equals("2")) {
			theLoaiHql = "loai = '" + request.getParameter("theLoai") + "' AND";
		}
		PagedListHolder<SanPham> pagedListHolder = new PagedListHolder<SanPham>(
				this.searchProduct(request.getParameter("searchInput"), theLoaiHql));
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
		model.addAttribute("sortBy", "0");
		model.addAttribute("limit", "9");
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
		String sortBy = request.getParameter("sort-by");

		String sortByHql = "";
		if (sortBy.equals("0")) {
			sortByHql = " ORDER BY tenSP ASC";
		} else if (sortBy.equals("1")) {
			sortByHql = " ORDER BY gia ASC";
		} else if (sortBy.equals("2")) {
			sortByHql = " ORDER BY gia DESC";
		} else if (sortBy.equals("3")) {
			sortByHql = " ORDER BY ngayThem ASC";
		} else if (sortBy.equals("4")) {
			sortByHql = " ORDER BY diemDG DESC";
		}

		String limit = request.getParameter("limit");

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
				getProductList(toHql.toHqlWhereClause(clauses) + sortByHql, 0));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);

		pagedListHolder.setPageSize(Integer.parseInt(limit));
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		if (!(maKH == null)) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("DSNH", getAllBrand());
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("sortBy", sortBy);
		model.addAttribute("limit", limit);
		return "user/shop";
	}

	public List<SanPham> searchProduct(String tenSP, String loai) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham where " + loai + "  slt > 0 AND tenSP LIKE :tenSP";
		Query query = session.createQuery(hql);
		query.setParameter("tenSP", "%" + tenSP + "%");
		List<SanPham> list = query.list();
		return list;
	}

}
