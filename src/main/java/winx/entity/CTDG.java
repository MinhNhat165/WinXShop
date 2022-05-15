package winx.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import winx.CompositePK.CTDGPK;

@Entity
@Table(name = "CTDG")
public class CTDG implements Serializable {
	@EmbeddedId
	private CTDGPK maCTDG;
	@ManyToOne
	@MapsId("maSP")
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;
	@ManyToOne
	@MapsId("maKH")
	@JoinColumn(name = "MaKH")
	private KhachHang khachHang;

	@Column(name = "DiemDG")
	private int diemDG;
	@Column(name = "MoTa")
	private String moTa;
	@Column(name = "NgayDG")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayDG;

	public CTDGPK getMaCTDG() {
		return maCTDG;
	}

	public void setMaCTDG(CTDGPK maCTDG) {
		this.maCTDG = maCTDG;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public int getDiemDG() {
		return diemDG;
	}

	public void setDiemDG(int diemDG) {
		this.diemDG = diemDG;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Date getNgayDG() {
		return ngayDG;
	}

	public void setNgayDG(Date ngayDG) {
		this.ngayDG = ngayDG;
	}

	public CTDG() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CTDG(SanPham sanPham, KhachHang khachHang, int diemDG, String moTa, Date ngayDG) {
		super();
		this.maCTDG = new CTDGPK(sanPham.getMaSP(), khachHang.getMaKH());
		this.sanPham = sanPham;
		this.khachHang = khachHang;
		this.diemDG = diemDG;
		this.moTa = moTa;
		this.ngayDG = ngayDG;
	}

}
