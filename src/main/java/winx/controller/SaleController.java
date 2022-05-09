package winx.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.transaction.Transactional;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.jpa.criteria.expression.SearchedCaseExpression.WhenClause;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.KhuyenMai;
import winx.entity.NhanHang;
import winx.entity.SanPham;

@Transactional
@Controller
@Validated
@RequestMapping("admin/sale")
public class SaleController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "index")
	public String sale(ModelMap model) {
		List<KhuyenMai> DSKM = getAllSale();
		KhuyenMai khuyenMai = new KhuyenMai();
		khuyenMai.setTrangThai(true);
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("KM", khuyenMai);
		return "admin/sale";
	}

	// insert
	@RequestMapping(value = "insert")
	public String openSaleInsertForm(ModelMap model, @ModelAttribute("KM") KhuyenMai khuyenMai) {
		List<KhuyenMai> DSKM = getAllSale();
		List<NhanHang> DSNH = getAllBrand();
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSNH", DSNH);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Thêm mới khuyến mãi");
		model.addAttribute("formAction", "admin/sale/insert.htm");
		model.addAttribute("btnAction", "btnInsert");
		return "admin/sale";
	}

	@RequestMapping(value = "insert", params = "btnInsert", method = RequestMethod.POST)
	public String getProductCondition(HttpServletRequest request, ModelMap model,
			@Validated @ModelAttribute("KM") KhuyenMai khuyenMai, BindingResult result,
			RedirectAttributes redirectAttributes) {

		boolean isValid = checkSale(khuyenMai, result);
		if (!result.hasErrors() && isValid) {
			Session session = factory.openSession();

			org.hibernate.Transaction t = session.beginTransaction();
			try {
				session.save(khuyenMai);
				t.commit();
				redirectAttributes.addFlashAttribute("message", "Thêm mới thành công !!!");
				redirectAttributes.addFlashAttribute("typeMessage", "success");
				return "redirect:index.htm";

			} catch (Exception e) {

				t.rollback();
				System.out.println(e.getCause().toString());
				if (e.getCause().toString().contains("duplicate key")) {
					result.rejectValue("maKM", "KM", "Mã khuyến mãi đã tồn tại");
				}
				if (e.getCause().toString().contains("String or binary data would be truncated")) {
					result.rejectValue("maKM", "KM", "Mã khuyến mãi không được vượt quá 8 ký tự");
				}
			}

			finally {
				session.close();
			}
		}
		List<KhuyenMai> DSKM = getAllSale();
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Thêm mới khuyến mãi");
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("formAction", "admin/sale/insert.htm");
		model.addAttribute("btnAction", "btnInsert");
		return "admin/sale";

	}

	// detail
	@RequestMapping(value = "detail/{maKM}.htm")
	public String saleDetail(HttpServletRequest request, ModelMap model, @PathVariable("maKM") String maKM) {
		List<KhuyenMai> DSKM = getAllSale();
		List<NhanHang> DSNH = getAllBrand();
		KhuyenMai khuyenMaiDetail = getSale(maKM);
		KhuyenMai khuyenMai = new KhuyenMai();
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSNH", DSNH);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("KMDetail", khuyenMaiDetail);
		model.addAttribute("idModal", "modalDetail");
		return "admin/sale";
	}

	// update
	@RequestMapping(value = "update/{maKM}.htm")
	public String openSaleUpdateForm(ModelMap model, @PathVariable("maKM") String maKM) {
		List<KhuyenMai> DSKM = getAllSale();
		List<NhanHang> DSNH = getAllBrand();
		KhuyenMai khuyenMai = getSale(maKM);
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSNH", DSNH);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Cập nhật khuyến mãi");
		model.addAttribute("formAction", "admin/sale/update/" + maKM + ".htm");
		model.addAttribute("btnAction", "btnUpdate");
		return "admin/sale";
	}

	@RequestMapping(value = "update/{maKM}.htm", params = "btnUpdate")
	public String saleUpdate(ModelMap model, @Valid @ModelAttribute("KM") KhuyenMai khuyenMai, BindingResult result,
			RedirectAttributes redirectAttributes, @PathVariable("maKM") String maKM) {
		if (!result.hasErrors()) {

		} else {
			Session session = factory.openSession();
			org.hibernate.Transaction t = session.beginTransaction();
			try {
				session.update(khuyenMai);
				t.commit();
				redirectAttributes.addFlashAttribute("message", "Cập nhật thành công !!!");
				redirectAttributes.addFlashAttribute("typeMessage", "success");
				return "redirect:/admin/sale/index.htm";
			} catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Cập nhật thất bại!!!");
				model.addAttribute("typeMessage", "error");
			} finally {
				session.close();
			}
		}

		model.addAttribute("DSKM", getAllSale());
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Cập nhật khuyến mãi");
		model.addAttribute("formAction", "admin/sale/update/" + maKM + ".htm");
		model.addAttribute("btnAction", "btnUpdate");

		return "admin/sale";
	}

	// filter
	@RequestMapping(value = "index", params = "btnFilter", method = RequestMethod.POST)
	public String saleFilter(@RequestParam Map<String, String> allParams, ModelMap model) {

		Session session = factory.getCurrentSession();

		String whereClauses = "";
		String ngayBD = hqlDateCondition(allParams.get("ngayBDLeft"), allParams.get("ngayBDRight"), "ngayBD");
		String ngayKT = hqlDateCondition(allParams.get("ngayKTLeft"), allParams.get("ngayKTRight"), "ngayKT");

		String trangThai = allParams.get("trangThai");
		if (trangThai.equals("1") || trangThai.equals("0")) {
			trangThai = "trangThai = " + trangThai;
		} else
			trangThai = "";

		List<String> conditionCluaseList = new ArrayList<>();
		conditionCluaseList.addAll(Arrays.asList(ngayBD, ngayKT, trangThai));

		whereClauses = hqlMultipleCondition(conditionCluaseList);
		String hql = "from KhuyenMai " + whereClauses;
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		model.addAttribute("DSKM", list);
		model.addAttribute("KM", new KhuyenMai());
		return "admin/sale";
	}

	public List<KhuyenMai> getAllSale() {
		Session session = factory.getCurrentSession();
		String hql = "from KhuyenMai";
		Query query = session.createQuery(hql);
		List<KhuyenMai> list = query.list();
		return list;
	}

	public List<NhanHang> getAllBrand() {
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang";
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		return list;
	}

	public KhuyenMai getSale(String maKM) {
		Session session = factory.getCurrentSession();
		String hql = "from KhuyenMai where maKM = :maKM";
		Query query = session.createQuery(hql);
		query.setParameter("maKM", maKM);
		KhuyenMai khuyenMai = (KhuyenMai) query.list().get(0);
		return khuyenMai;
	}

	// những cái ko check dc bằng hibernate
	public boolean checkSale(@Valid KhuyenMai khuyenMai, BindingResult result) {
		if (khuyenMai.getNgayBD().after(khuyenMai.getNgayKT())) {
			result.rejectValue("ngayBD", "KM", "Ngày bắt đầu phải nhỏ hơn ngày kết thúc");
			return false;
		}
		return true;
	}

	// chuyển dữ liệu ngày sang câu lệnh điều kiện hql

	public String hqlDateCondition(String ngayBD, String ngayKT, String columnName) {
		String hql = columnName;
		if (!ngayBD.isEmpty()) {
			if (ngayKT.isEmpty()) {
				hql += " = '" + ngayBD + "'";
			} else
				hql = " (" + hql + " BETWEEN '" + ngayBD + "' AND '" + ngayKT + "'" + ") ";
		} else {
			if (!ngayKT.isEmpty()) {
				hql += " <= '" + ngayKT + "'";
			} else
				hql = "";
		}
		return hql;

	}

	// chuyển các điều kiện sang câu lệnh 1 câu lệnh where
	public String hqlMultipleCondition(List<String> list) {
		String whereClauses = list.get(0);
		for (int i = 0; i < list.size() - 1; i++) {
			if (!list.get(i + 1).isEmpty())
				if (!whereClauses.isEmpty())
					whereClauses += " AND " + list.get(i + 1);
				else
					whereClauses += list.get(i + 1);

		}
		if (!whereClauses.isEmpty())
			whereClauses = "WHERE " + whereClauses;
		return whereClauses;
	}

}
