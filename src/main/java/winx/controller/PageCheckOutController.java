package winx.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.CompositePK.GHSPPK;
import winx.entity.CTDD;
import winx.entity.DonDat;
import winx.entity.GioHang_SanPham;
import winx.entity.KhachHang;
import winx.entity.NhanHang;
import winx.entity.SanPham;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("checkout")
public class PageCheckOutController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.POST, params = "btnCheckout")
	public String index(HttpServletRequest request, ModelMap model, RedirectAttributes redirectAttributes) {

		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");
		model.addAttribute("user", getCustomer(maKH));
		String[] dsSanPham = request.getParameterValues("sanPham");
		if (dsSanPham == null) {
			String referer = request.getHeader("Referer");
			redirectAttributes.addFlashAttribute("message",
					new Message("error", "Vui lòng chọn ít nhất 1 sản phẩm để đặt hàng"));
			return "redirect:" + referer;
		}
		String[] soLuong = request.getParameterValues("soLuong");
		List<GioHang_SanPham> dsGHSP = new ArrayList<GioHang_SanPham>();
		for (int i = 0; i < dsSanPham.length; i++) {
			GioHang_SanPham ghsp = new GioHang_SanPham(getProduct(dsSanPham[i]), getCustomer(maKH),
					Integer.parseInt(soLuong[i]));
			dsGHSP.add(ghsp);
		}
		model.addAttribute("dsGHSP", dsGHSP);

		return "user/checkout";
	}

	// xác nhận đặt hàng
	@RequestMapping(value = "")
	public String confirmCheckout(ModelMap model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		String[] dsSanPham = request.getParameterValues("dsSanPham");
		Message ms = new Message("error", "Hãy chọn ít nhất 1 sản phẩm để dặt hàng");
		if (dsSanPham.length > 0) {
			System.out.println(request.getParameter("tenNguoiNhan"));
			HttpSession ss = request.getSession();
			String maKH = (String) ss.getAttribute("maKH");
			KhachHang khachHang = getCustomer(maKH);
			DonDat donDat = new DonDat();
			donDat.setMaDD(generatorId("DD", "DonDat", "maDD"));
			donDat.setTenNguoiNhan(request.getParameter("tenNguoiNhan"));
			donDat.setDiaChi(request.getParameter("diaChiNguoiNhan"));
			donDat.setSdtNguoiNhan(request.getParameter("sdtNguoiNhan"));
			donDat.setNgayDat(new Date());
			donDat.setKhachHang(khachHang);
			donDat.setTrangThai(0);
			donDat.setTongTien(new BigDecimal(0));

			boolean phuongThucTT = false;
			if (request.getParameter("phuongThucTT").equals("1"))
				phuongThucTT = true;
			donDat.setDaThanhToan(phuongThucTT);

			String[] soLuong = request.getParameterValues("soLuong");
			String[] khuyenMai = request.getParameterValues("khuyenMai");

			Session session = factory.openSession();

			Transaction t = session.beginTransaction();
			try {
				session.save(donDat);
				System.out.println(dsSanPham.length);
				for (int i = 0; i < dsSanPham.length; i++) {
					// xoá sp trong gio hang
					SanPham sp = getProduct(dsSanPham[i]);
					GioHang_SanPham ghsp = (GioHang_SanPham) session.get(GioHang_SanPham.class,
							new GHSPPK(dsSanPham[i], maKH));
					if (!(ghsp == null))
						session.delete(ghsp);
					// them sp vào hoá đơn
					CTDD ctdd = new CTDD(sp, donDat, Integer.parseInt(soLuong[i]), getSale(khuyenMai[i]));
					session.save(ctdd);
				}
				t.commit();
				redirectAttributes.addFlashAttribute("message", new Message("success", "Đăt hàng thành công"));
				return "redirect:/shop.htm";

			} catch (Exception e) {
				ms.setType("error");
				ms.setMessage("Đặt hàng thất bại");

			} finally {

				session.close();
			}
			model.addAttribute("mesage", ms);
			return "user/checkout";
		}

		redirectAttributes.addFlashAttribute("ms", ms);

		return "redirect:checkout.htm";
	}

	public GioHang_SanPham getProductInCart(String maSP, String maKH) {
		Session session = factory.getCurrentSession();
		String hql = "FROM  GioHang_SanPham where maSP = '" + maSP + "' AND maKH = '" + maKH + "'";
		Query query = session.createQuery(hql);
		return (GioHang_SanPham) query.list().get(0);
	}

}
