package winx.CompositePK;

import java.io.Serializable;

import winx.entity.DanhGia;
import winx.entity.KhachHang;

public class CTDGPK implements Serializable {
	private DanhGia danhGia;
	private KhachHang khachHang;
	public CTDGPK(DanhGia danhGia, KhachHang khachHang) {
		super();
		this.danhGia = danhGia;
		this.khachHang = khachHang;
	}
	
}
