package winx.controller;

import java.text.DecimalFormat;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

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

	public List<TinMoi> getAllNews() {

		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi";
		Query query = session.createQuery(hql);
		List<TinMoi> list = query.list();
		return list;
	}

	public List<SanPham> getRandomProduct(int number) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham ORDER BY RAND()";
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
