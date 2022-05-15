package winx.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import winx.CompositePK.CTDDPK;

@Entity
@Table(name = "CTDD")
public class CTDD implements Serializable {
	@EmbeddedId
	private CTDDPK maCTDD;
	@ManyToOne
	@MapsId("maSP")
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;
	@ManyToOne
	@MapsId("maDD")
	@JoinColumn(name = "MaDD")
	private DonDat donDat;
	
	@Column(name = "SoLuong")
	private int soLuong;
	@ManyToOne
	@JoinColumn(name = "MaKM")
	private KhuyenMai khuyenMai;
	public CTDDPK getMaCTDD() {
		return maCTDD;
	}
	public void setMaCTDD(CTDDPK maCTDD) {
		this.maCTDD = maCTDD;
	}
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public DonDat getDonDat() {
		return donDat;
	}
	public void setDonDat(DonDat donDat) {
		this.donDat = donDat;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public KhuyenMai getKhuyenMai() {
		return khuyenMai;
	}
	public void setKhuyenMai(KhuyenMai khuyenMai) {
		this.khuyenMai = khuyenMai;
	}
	public CTDD() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CTDD(SanPham sanPham, DonDat donDat, int soLuong, KhuyenMai khuyenMai) {
		super();
		this.maCTDD = new CTDDPK(sanPham.getMaSP(), donDat.getMaDD());
		this.sanPham = sanPham;
		this.donDat = donDat;
		this.soLuong = soLuong;
		this.khuyenMai = khuyenMai;
	}

	

}
