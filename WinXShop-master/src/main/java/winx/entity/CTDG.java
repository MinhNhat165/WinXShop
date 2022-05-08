package winx.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import winx.CompositePK.CTDGPK;

@Entity
@Table(name = "CTDG")
@IdClass(CTDGPK.class)
public class CTDG implements Serializable {
	@Id
	@ManyToOne
	@JoinColumn(name = "MaDG")
	private DanhGia danhGia;
	@Id
	@ManyToOne
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
	public DanhGia getDanhGia() {
		return danhGia;
	}
	public void setDanhGia(DanhGia danhGia) {
		this.danhGia = danhGia;
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
	
}
