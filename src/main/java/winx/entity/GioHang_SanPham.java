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

import winx.CompositePK.CTDGPK;
import winx.CompositePK.GHSPPK;

@Entity
@Table(name = "GIOHANG_SANPHAM")

public class GioHang_SanPham implements Serializable {
	@EmbeddedId
	private GHSPPK maGHSP;
	@ManyToOne
	@MapsId("maSP")
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;
	@ManyToOne
	@MapsId("maKH")
	@JoinColumn(name = "MaKH")
	private KhachHang khachHang;

	@Column(name = "SoLuong")
	private int soLuong;

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	

	public GHSPPK getMaGHSP() {
		return maGHSP;
	}

	public void setMaGHSP(GHSPPK maGHSP) {
		this.maGHSP = maGHSP;
	}

	public GioHang_SanPham(SanPham sanPham, KhachHang khachHang, int soLuong) {
		super();
		this.maGHSP = new GHSPPK(sanPham.getMaSP(), khachHang.getMaKH());
		this.sanPham = sanPham;
		this.khachHang = khachHang;
		this.soLuong = soLuong;
	}

	public GioHang_SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
