package winx.controller;

import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.bean.UploadFile;
import winx.entity.NhanHang;
import winx.entity.SanPham;

@Controller
@Transactional
@RequestMapping("admin")
public class ProductController extends CommonMethod {

	@Autowired
	SessionFactory factory;
	@Autowired
	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;

	@RequestMapping(value = "product", method = RequestMethod.GET)

	public String index(ModelMap model) {
		model.addAttribute("sanpham", new SanPham());
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		return "admin/product";
	}

	@RequestMapping(value = "product/add.htm", method = RequestMethod.GET)

	public String add(ModelMap model) {
		SanPham sp = new SanPham();
		sp.setMaSP(generatorId("SP", "SanPham", "maSP"));
		model.addAttribute("sanpham", sp);
		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("status", "false");
		model.addAttribute("btnStatus", "btnAdd");
		return "admin/product";
	}

	@RequestMapping(value = "product/add.htm", params = "btnAdd", method = RequestMethod.POST)

	public String addProduct(@ModelAttribute("sanpham") SanPham sp, ModelMap model, BindingResult errors,
			@RequestParam("anh3") MultipartFile anh,RedirectAttributes redirectAttributes) {

		if (this.checkUniqueMaSP(sp.getMaSP()) == false) {
			errors.rejectValue("maSP", "sanpham", "Mã đã tồn tại!");
		}
		if (sp.getGia().compareTo(new BigDecimal("0.00")) < 0) {
			errors.rejectValue("gia", "sanpham", "Giá trị không hợp lệ!");

		}

		if (this.checkProduct(sp.getTenSP(), sp.getMaSP(), sp.getDungTich(), sp.getLoai(),
				sp.getNhanHang().getMaNH()) == false) {
			errors.rejectValue("tenSP", "sanpham", "Sản phẩm đã tồn tại!");
		}

		if (sp.getSlt() < 0) {
			errors.rejectValue("slt", "sanpham", "Giá trị không hợp lệ!");
		}
		if (sp.getDungTich() <= 0) {
			errors.rejectValue("dungTich", "sanpham", "Giá trị không hợp lệ!");
		}

		if (sp.getNgaySX().after(sp.getNgayHH())) {
			errors.rejectValue("ngayHH", "sanpham", "Ngày hết hạn phải lớn hơn ngày sản xuất!");
		}
		if (sp.getNgaySX().after(new Date())) {
			errors.rejectValue("ngaySX", "sanpham", "Ngày Sản xuất phải bé hơn ngày hiện tại!");
		}
		if (anh.isEmpty()) {
			errors.rejectValue("anh", "nhanhang", "Ảnh không được rỗng!");
		}

		if (!errors.hasErrors()) {
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			String tenAnh = date + anh.getOriginalFilename();
			String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;

			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			sp.setNgayThem(new Date());

			try {
				sp.setAnh(tenAnh);
				session.save(sp);
				t.commit();
				anh.transferTo(new File(duongDanAnh));
				model.addAttribute("sanpham", new SanPham());
				redirectAttributes.addFlashAttribute("message",
						new Message("success","Thêm mới thành công"));
				return "redirect:/admin/product.htm";
			} catch (Exception e) {
				System.out.println(e);
				t.rollback();

			} finally {
				session.close();
			}
		}

		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("btnStatus", "btnAdd");
		model.addAttribute("message",
				new Message("error","Thêm mới thất bại!"));
		model.addAttribute("sanpham", sp);

		return "admin/product";

	}

	@RequestMapping(value = "product/update/{id}.htm", params = "linkEdit")

	public String showupdateProduct(ModelMap model, @PathVariable("id") String id) {
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("sanpham", this.getSanPham(id));
		model.addAttribute("status", "true");
		model.addAttribute("btnStatus", "btnEdit");

		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);

		return "admin/product";
	}

	@RequestMapping(value = "product/update/{id}.htm", params = "btnEdit", method = RequestMethod.POST)

	public String updateProduct(@ModelAttribute("sanpham") SanPham sp, BindingResult errors, ModelMap model,
			@RequestParam("anh3") MultipartFile anh,RedirectAttributes redirectAttributes) {

		if (this.checkProduct(sp.getTenSP(), sp.getMaSP(), sp.getDungTich(), sp.getLoai(),
				sp.getNhanHang().getMaNH()) == false) {
			errors.rejectValue("tenSP", "sanpham", "Sản phẩm đã tồn tại!");
		}
		if (sp.getGia().compareTo(new BigDecimal("0.00")) < 0) {
			errors.rejectValue("gia", "sanpham", "Giá trị không hợp lệ!");
		}
		if (sp.getNgaySX().after(sp.getNgayHH())) {
			errors.rejectValue("ngayHH", "sanpham", "Ngày hết hạn phải lớn hơn ngày sản xuất!");
		}

		if (sp.getNgaySX().after(new Date())) {
			errors.rejectValue("ngaySX", "sanpham", "Ngày Sản xuất phải bé hơn ngày hiện tại!");
		}
		boolean checkanh = true;
		if (anh.isEmpty()) {
			checkanh = false;
		}
		if (!errors.hasErrors()) {
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			String tenAnh = date + anh.getOriginalFilename();
			String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;

			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			sp.setNgayThem(new Date());

			try {
				if (checkanh) {
					sp.setAnh(tenAnh);
					anh.transferTo(new File(duongDanAnh));
				}

				session.update(sp);

				t.commit();
				model.addAttribute("sanpham", new SanPham());
				redirectAttributes.addFlashAttribute("message",
						new Message("success","Chỉnh sửa thành công"));
				return "redirect:/admin/product.htm";
			} catch (Exception e) {
				t.rollback();
				System.out.println(e.getCause());

			} finally {
				session.close();
			}
		}

		List<SanPham> ds = getdsSanPham();
		model.addAttribute("dssanpham", ds);
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("btnStatus", "btnEdit");
		model.addAttribute("message",
				new Message("error","Chỉnh sửa thất bại!"));

		return "admin/product";
	}

	@RequestMapping(value = "product/show/{id}.htm", params = "linkShow")

	public String showshowProduct(@PathVariable("id") String id, ModelMap model) {
		model.addAttribute("sanpham", this.getSanPham(id));
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
		List<NhanHang> nh = query.list();
		return nh;
	}

	public SanPham getSanPham(String id) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham where maSP=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		SanPham sp = (SanPham) query.list().get(0);
		return sp;

	}

	public List<SanPham> getdsSanPham() {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();

		return list;
	}

	public boolean checkUniqueMaSP(String id) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham where maSP=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<SanPham> sp = query.list();
		if (sp.size() == 0) {
			return true;
		}
		return false;

	}

	public boolean checkProduct(String name, String id, int dungtich, int loai, String nh) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham sp where sp.tenSP=:name and sp.maSP !=:id and sp.dungTich=:dungtich and sp.loai=:loai and sp.nhanHang.maNH=:nh";
		Query query = session.createQuery(hql);
		query.setParameter("name", name);
		query.setParameter("id", id);
		query.setParameter("dungtich", dungtich);
		query.setParameter("loai", loai);
		query.setParameter("nh", nh);

		List<SanPham> sp = query.list();
		if (sp.size() == 0) {
			return true;
		}
		return false;

	}
}
