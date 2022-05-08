package winx.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transaction;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.exception.spi.SQLExceptionConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.KhuyenMai;
import winx.entity.NhanHang;
import winx.entity.SanPham;

@Transactional
@Controller
@RequestMapping("admin/sale")
public class SaleController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "index")
	public String sale(ModelMap model) throws ParseException {
		List<KhuyenMai> DSKM = getAllSale();
		KhuyenMai khuyenMai = new KhuyenMai();
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("KM", khuyenMai);
		return "admin/sale";
	}

	// insert
	@RequestMapping(value = "insert")
	public String openSaleInsertForm(HttpServletRequest request, ModelMap model,
			@ModelAttribute("KM") KhuyenMai khuyenMai) {
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

	@RequestMapping(value = "insert", params = "btnInsert")
	public String getProductCondition(HttpServletRequest request, ModelMap model,
			@ModelAttribute("KM") KhuyenMai khuyenMai, RedirectAttributes redirectAttributes) throws ParseException {
		String ngayBD = request.getParameter("input-ngayBD");
		String ngayKT = request.getParameter("input-ngayKT");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		khuyenMai.setNgayBD(formatter.parse(ngayBD));
		khuyenMai.setNgayKT(formatter.parse(ngayKT));
		Session session = factory.openSession();
		org.hibernate.Transaction t = session.beginTransaction();
		String message = "Thêm mới thất bại !!!";
		if (khuyenMai.getGiaTriKM() <= 0 || khuyenMai.getGiaTriKM() > 100) {
			message = "Giá trị khuyến mãi không hợp lệ (0 < giá trị < 100) ";
		}
		else if (khuyenMai.getNgayBD().after(khuyenMai.getNgayKT())) {
			message = "Ngày bắt đầu phải nhỏ hơn ngày kết thúc";
		}
		else {
			try {
				session.save(khuyenMai);
				t.commit();
				redirectAttributes.addFlashAttribute("message", "Thêm mới thành công !!!");
				redirectAttributes.addFlashAttribute("typeMessage", "success");
				return "redirect:index.htm";

			} catch (ConstraintViolationException e) {

				t.rollback();
				if(e.getErrorCode() == 2627) {
					message="Mã khuyến mãi đã tồn tại";
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
		model.addAttribute("message", message);
		model.addAttribute("typeMessage", "error");
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

	// edit
	@RequestMapping(value = "edit/{maKM}.htm")
	public String openSaleEditForm(HttpServletRequest request, ModelMap model, @PathVariable("maKM") String maKM) {
		List<KhuyenMai> DSKM = getAllSale();
		List<NhanHang> DSNH = getAllBrand();
		KhuyenMai khuyenMai = getSale(maKM);
		model.addAttribute("DSKM", DSKM);
		model.addAttribute("DSNH", DSNH);
		model.addAttribute("KM", khuyenMai);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("formTitle", "Cập nhật khuyến mãi");
		model.addAttribute("formAction", "admin/sale/edit/" + maKM + ".htm");
		model.addAttribute("btnAction", "btnEdit");
		return "admin/sale";
	}

	@RequestMapping(value = "edit/{maKM}.htm", params = "btnEdit")
	public String saleEdit(HttpServletRequest request, ModelMap model, @PathVariable("KM") KhuyenMai khuyenMai)
			throws ParseException {
		Session session = factory.openSession();
		org.hibernate.Transaction t = session.beginTransaction();
		String ngayBD = request.getParameter("input-ngayBD");
		String ngayKT = request.getParameter("input-ngayKT");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		khuyenMai.setNgayBD(formatter.parse(ngayBD));
		khuyenMai.setNgayKT(formatter.parse(ngayKT));

		try {
			session.update(khuyenMai);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công !!!");
			model.addAttribute("typeMessage", "success");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại!!!");
			model.addAttribute("typeMessage", "error");
		} finally {
			session.close();
		}

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

}
