package winx.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import winx.CompositePK.CTDDPK;

@Entity
@IdClass(CTDDPK.class)
@Table(name = "CTDD")
public class CTDD implements Serializable {
	@Id
	@ManyToOne
	@JoinColumn(name = "MaDD")
	private DonDat donDat;
	@Id
	@ManyToOne
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;
	@Column(name = "SoLuong")
	private int soLuong;
	@ManyToOne
	@JoinColumn(name = "MaKM")
	private KhuyenMai khuyenMai;

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

}
