package winx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import winx.CompositePK.GHSPPK;

@Entity
@Table(name ="GIOHANG_SANPHAM")
@IdClass(GHSPPK.class)
public class GioHang_SanPham {
	@Id
	@ManyToOne
	@JoinColumn(name = "MaKH")
	private KhachHang khachHang;
	@Id
	@ManyToOne
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;
	@Column(name = "SoLuong")
	private int soLuong;

}
