package winx.CompositePK;

import java.io.Serializable;

import winx.entity.DonDat;
import winx.entity.SanPham;

public class CTDDPK implements Serializable {
	private DonDat donDat;
	private SanPham sanPham;
	public CTDDPK(DonDat donDat, SanPham sanPham) {
		super();
		this.donDat = donDat;
		this.sanPham = sanPham;
	}
	
}
