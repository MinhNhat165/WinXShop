package winx.CompositePK;

import java.io.Serializable;

import winx.entity.KhuyenMai;
import winx.entity.SanPham;

public class SPKMPK implements Serializable{
	private SanPham sanPham;
	private KhuyenMai khuyenMai;
	public SPKMPK(SanPham sanPham, KhuyenMai khuyenMai) {
		super();
		this.sanPham = sanPham;
		this.khuyenMai = khuyenMai;
	}
}
