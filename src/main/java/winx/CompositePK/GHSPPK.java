package winx.CompositePK;

import java.io.Serializable;

import winx.entity.KhachHang;
import winx.entity.SanPham;

public class GHSPPK implements Serializable {
	private KhachHang khachHang;
	private SanPham sanPham;

	public GHSPPK(KhachHang khachHang, SanPham sanPham) {
		super();
		this.khachHang = khachHang;
		this.sanPham = sanPham;
	}

}
