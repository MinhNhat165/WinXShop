package winx.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import winx.CompositePK.GHSPPK;
import winx.entity.DonDat;
import winx.entity.GioHang_SanPham;
import winx.entity.KhachHang;
import winx.entity.KhuyenMai;
import winx.entity.NhanHang;
import winx.entity.SanPham;
import winx.entity.TinMoi;

@Transactional
public class CommonMethod {
	@Autowired
	SessionFactory factory;

	public List<KhuyenMai> getAllSale() {
		Session session = factory.getCurrentSession();
		String hql = "from KhuyenMai";
		Query query = session.createQuery(hql);
		List<KhuyenMai> list = query.list();
		return list;
	}
	
	public List<DonDat> getAllOrder() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DonDat";
		Query query = session.createQuery(hql);
		List<DonDat> list = query.list();
		
		return list;
	}
	
	public List<KhachHang> getAllCustomer() {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang";
		Query query = session.createQuery(hql);
		List<KhachHang> list = query.list();	
		return list;
	}
	
	public List<NhanHang> getAllBrand() {
		Session session = factory.getCurrentSession();
		String hql = "from NhanHang";
		Query query = session.createQuery(hql);
		List<NhanHang> list = query.list();
		return list;
	}

	public List<SanPham> getAllProduct() {

		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		return list;
	}

	public List<SanPham> getTopBestSaleProduct() {

		Session session = factory.getCurrentSession();
		String hql = "from SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		List<SanPham> finalResult = new ArrayList<SanPham>();
		for (SanPham sanPham : list) {

			if (sanPham.getDsCTDD().stream().collect(Collectors.summingInt(o -> o.getSoLuong())) > 9)
				finalResult.add(sanPham);
		}

		return finalResult;
	}

	public List<TinMoi> getAllNews() {

		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi";
		Query query = session.createQuery(hql);
		List<TinMoi> list = query.list();
		return list;
	}

	public List<SanPham> getRandomProduct(int number) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham WHERE slt > 0 ORDER BY RAND()";
		Query query = session.createQuery(hql);
		query.setMaxResults(number);
		List<SanPham> list = query.list();
		return list;
	}

	public List<SanPham> getProductList(String clause, int limit) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham " + clause;
		Query query = session.createQuery(hql);
		if (limit > 0) {
			query.setMaxResults(limit);
		}
		List<SanPham> list = query.list();
		return list;
	}

	public SanPham getProduct(String maSP) {

		Session session = factory.getCurrentSession();

		SanPham sanPham = (SanPham) session.get(SanPham.class, maSP);
		return sanPham;
	}

	public KhachHang getCustomer(String maKH) {

		Session session = factory.getCurrentSession();
		KhachHang khachHang = (KhachHang) session.get(KhachHang.class, maKH);
		return khachHang;
	}

	public KhachHang getCustomerClient(HttpServletRequest request) {
		HttpSession ss = request.getSession();
		KhachHang kh = (KhachHang) ss.getAttribute("user");
		Session session = factory.getCurrentSession();
		KhachHang khachHang = (KhachHang) session.get(KhachHang.class, kh.getMaKH());
		return khachHang;
	}

	public Boolean addToCart(String maSP, String maKH, int number) {
		GioHang_SanPham ghsp = new GioHang_SanPham(getProduct(maSP), getCustomer(maKH), number);
		Session session = factory.getCurrentSession();

		GioHang_SanPham existsGHSP = (GioHang_SanPham) session.get(GioHang_SanPham.class, ghsp.getMaGHSP());
		session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (existsGHSP == null) {

			try {
				session.save(ghsp);
				t.commit();
				return true;

			} catch (Exception e) {
				t.rollback();
				return false;
			} finally {
				session.close();
			}
		} else {
			existsGHSP.setSoLuong(existsGHSP.getSoLuong() + number);
			try {
				session.update(existsGHSP);
				t.commit();
				return true;

			} catch (Exception e) {
				t.rollback();
				return false;

			} finally {
				session.close();
			}
		}

	}

	public Boolean removeFromCart(String maSP, String maKH) {
		Session session = factory.getCurrentSession();
		session = factory.openSession();
		Transaction t = session.beginTransaction();
		GioHang_SanPham ghsp = (GioHang_SanPham) session.get(GioHang_SanPham.class, new GHSPPK(maSP, maKH));

		try {
			session.delete(ghsp);
			t.commit();
			return true;

		} catch (Exception e) {
			t.rollback();
			System.out.println(e);
			return false;
		} finally {
			session.close();
		}
	}

	public KhuyenMai getSale(String maKM) {
		Session session = factory.getCurrentSession();

		KhuyenMai khuyenMai = (KhuyenMai) session.get(KhuyenMai.class, maKM);
		return khuyenMai;
	}

	public String generatorId(String refix, String table, String columnId) {
		Session session = factory.getCurrentSession();
		String hql = "FROM " + table;
		Query query = session.createQuery(hql);
		int number = query.list().size() + 1;
		boolean isInValid = true;
		String id = refix;
		DecimalFormat df = new DecimalFormat("000000");
		while (isInValid) {
			String pkTemp = id + df.format(number);
			System.out.println(pkTemp);
			String hqlwhere = hql + " WHERE " + columnId + " = '" + pkTemp + "'";
			query = session.createQuery(hqlwhere);
			if (query.list().size() > 0)
				number++;
			else {
				id = pkTemp;
				isInValid = false;
			}
		}
		return id;
	}
}
