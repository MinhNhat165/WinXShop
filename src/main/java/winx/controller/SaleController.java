package winx.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import javax.transaction.Transactional;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.jpa.criteria.expression.SearchedCaseExpression.WhenClause;
import org.hibernate.mapping.Collection;
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

import winx.CommonMethod.ToHql;
import winx.CompositePK.SPKMPK;
import winx.entity.KhuyenMai;
import winx.entity.NhanHang;
import winx.entity.SanPham;
import winx.entity.SanPham_KM;

@Transactional
@Controller
@Validated
@RequestMapping("admin/sale")
public class SaleController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String sale(ModelMap model) {
		List<KhuyenMai> DSKM = getAllSale();
		KhuyenMai khuyenMai = new KhuyenMai();

		khuyenMai.setTrangThai(true);
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("KM", khuyenMai);
		return "admin/sale";
	}

	// insert
	@RequestMapping(value = "add")
	public String openSaleInsertForm(ModelMap model, @ModelAttribute("KM") KhuyenMai khuyenMai) {
		khuyenMai.setMaKM(this.generatorId("KM", "KhuyenMai", "maKM"));
		List<KhuyenMai> DSKM = getAllSale();
		List<SanPham> DSSP = getAllProduct();
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSSP", DSSP);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Thêm mới khuyến mãi");
		model.addAttribute("formAction", "admin/sale/add.htm");
		model.addAttribute("btnAction", "btnAdd");
		return "admin/sale";
	}

	@RequestMapping(value = "add", params = "btnAdd", method = RequestMethod.POST)
	public String getProductCondition(HttpServletRequest request, ModelMap model,
			@Validated @ModelAttribute("KM") KhuyenMai khuyenMai, BindingResult result,
			RedirectAttributes redirectAttributes) {
		boolean isValid = checkSale(khuyenMai, result);
		String[] productSaleList = request.getParameterValues("product-sale");
		boolean isValidProductSaleList = true;
		if (productSaleList == null) {
			model.addAttribute("productSaleListError", "Vui lòng chọn ít nhất 1 sản phẩm áp dụng");
			isValidProductSaleList = false;
		}
		if (!result.hasErrors() && isValid && isValidProductSaleList) {

			Session session = factory.openSession();

			Transaction t = session.beginTransaction();
			try {

				session.save(khuyenMai);

				for (String maSP : productSaleList) {

					SanPham_KM spkm = new SanPham_KM(getProduct(maSP), khuyenMai);

					session.save(spkm);

				}
				t.commit();
				redirectAttributes.addFlashAttribute("message", "Thêm mới thành công !!!");
				redirectAttributes.addFlashAttribute("typeMessage", "success");
				return "redirect:/admin/sale.htm";

			} catch (Exception e) {

				t.rollback();
				System.out.println(e.getCause());
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
		model.addAttribute("formAction", "admin/sale/add.htm");
		model.addAttribute("btnAction", "btnAdd");
		model.addAttribute("productSaleList", productSaleList);
		model.addAttribute("DSSP", getAllProduct());

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
		List<String> productSaleList = new ArrayList<String>();
		khuyenMai.getDsSPKM().forEach(t -> productSaleList.add(t.getSanPham().getMaSP()));
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSNH", DSNH);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Cập nhật khuyến mãi");
		model.addAttribute("formAction", "admin/sale/update/" + maKM + ".htm");
		model.addAttribute("btnAction", "btnUpdate");
		model.addAttribute("productSaleList", productSaleList);
		model.addAttribute("DSSP", getAllProduct());
		return "admin/sale";
	}

	@RequestMapping(value = "update/{maKM}.htm", params = "btnUpdate")
	public String saleUpdate(HttpServletRequest request, ModelMap model,
			@Valid @ModelAttribute("KM") KhuyenMai khuyenMai, BindingResult result,
			RedirectAttributes redirectAttributes, @PathVariable("maKM") String maKM) {
		boolean isValid = checkSale(khuyenMai, result);

		String[] productSaleList = request.getParameterValues("product-sale");
		boolean isValidProductSaleList = true;
		if (productSaleList == null) {
			model.addAttribute("productSaleListError", "Vui lòng chọn ít nhất 1 sản phẩm áp dụng");
			isValidProductSaleList = false;
		}
		List<String> oldProductSaleList = new ArrayList<String>();
		getSale(maKM).getDsSPKM().forEach(t -> oldProductSaleList.add(t.getSanPham().getMaSP()));

//		List<SanPham_KM> dsspkm = khuyenMai.getDsSPKM().stream()
//				.filter(t -> productSaleList.contains(t.getSanPham().getMaSP())).collect(Collectors.toList());
//		for (SanPham_KM sanPham_KM : dsspkm) {
//			System.out.println(sanPham_KM);
//		}

		if (!result.hasErrors() && isValid && isValidProductSaleList) {
			Session session = factory.openSession();
			org.hibernate.Transaction t = session.beginTransaction();

			try {

				session.update(khuyenMai);
				Query query = session.createQuery("FROM SanPham_KM where maKM = '" + khuyenMai.getMaKM() + "'");

				List<SanPham_KM> ds_sp_km = query.list();
				for (SanPham_KM sp_km : ds_sp_km) {
					session.delete(sp_km);
				}
				for (String maSP : productSaleList) {

					SanPham_KM spkm = new SanPham_KM(getProduct(maSP), khuyenMai);

					session.save(spkm);

				}

				t.commit();
				redirectAttributes.addFlashAttribute("message", "Cập nhật thành công !!!");
				redirectAttributes.addFlashAttribute("typeMessage", "success");
				return "redirect:/admin/sale.htm";
			} catch (Exception e) {
				System.out.println(e);
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
		model.addAttribute("DSSP", getAllProduct());

		return "admin/sale";
	}

	// filter
	@RequestMapping(value = "index", params = "btnFilter", method = RequestMethod.POST)
	public String saleFilter(@RequestParam Map<String, String> allParams, ModelMap model) {

		Session session = factory.getCurrentSession();
		ToHql toHql = new ToHql();

		String whereClause = "";

		String ngayBD = toHql.toHqlRangeCondition(allParams.get("ngayBDLeft"), allParams.get("ngayBDRight"), "ngayBD");
		String ngayKT = toHql.toHqlRangeCondition(allParams.get("ngayKTLeft"), allParams.get("ngayKTRight"), "ngayKT");

		String trangThai = allParams.get("trangThai");
		if (trangThai.equals("1") || trangThai.equals("0")) {
			trangThai = "trangThai = " + trangThai;
		} else
			trangThai = "";

		List<String> conditionCluaseList = new ArrayList<>();
		conditionCluaseList.addAll(Arrays.asList(ngayBD, ngayKT, trangThai));
		whereClause = toHql.toHqlWhereClause(conditionCluaseList);
		String hql = "from KhuyenMai " + whereClause;
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		model.addAttribute("DSKM", list);
		model.addAttribute("KM", new KhuyenMai());
		return "admin/sale";
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
		boolean isValid = true;
		if (khuyenMai.getNgayBD() == null || khuyenMai.getNgayKT() == null)
			return false;
		if (khuyenMai.getNgayBD().after(khuyenMai.getNgayKT())) {
			result.rejectValue("ngayBD", "KM", "Ngày bắt đầu phải nhỏ hơn ngày kết thúc");
			isValid = false;
		}

		return isValid;
	}

}
