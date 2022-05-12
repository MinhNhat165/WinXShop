package winx.CompositePK;

import java.io.Serializable;

import winx.entity.DonDat;
import winx.entity.SanPham;

public class CTDDPK implements Serializable {
	private DonDat donDat;
	private SanPham sanPham;

	public CTDDPK() {
		super();
	}

	public CTDDPK(DonDat donDat, SanPham sanPham) {
		super();
		this.setDonDat(donDat);
		this.setSanPham(sanPham);
	}

	public DonDat getDonDat() {
		return donDat;
	}

	public void setDonDat(DonDat donDat) {
		this.donDat = donDat;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

}
