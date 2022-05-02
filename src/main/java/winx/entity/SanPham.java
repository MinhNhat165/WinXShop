package winx.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "SANPHAM")

public class SanPham {
	@Id
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "TenSP")
	private String tenSP;
	@Column(name = "Anh")
	private String anh;
	@Column(name = "NgaySX")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngaySX;
	@Column(name = "NgayHH")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayHH;
	@Column(name = "DungTich")
	private int dungTich;
	@Column(name = "MoTa")
	private String moTa;
	@Column(name = "NgayThem")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayThem;
	@Column(name = "Gia")
	private BigDecimal gia;
	@Column(name = "SLT")
	private int slt;
	@Column(name = "Loai")
	private int loai;
	@ManyToOne
	@JoinColumn(name = "MaNH")
	private NhanHang nhanHang;
	@OneToOne
	@JoinColumn(name = "MaDG")
	private DanhGia danhGia;

	@OneToMany(mappedBy = "sanPham")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<SanPham_KM> dsSPKM;
	@OneToMany(mappedBy = "sanPham")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<GioHang_SanPham> dsGHSP;
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaySX() {
		return ngaySX;
	}
	public void setNgaySX(Date ngaySX) {
		this.ngaySX = ngaySX;
	}
	public Date getNgayHH() {
		return ngayHH;
	}
	public void setNgayHH(Date ngayHH) {
		this.ngayHH = ngayHH;
	}
	public int getDungTich() {
		return dungTich;
	}
	public void setDungTich(int dungTich) {
		this.dungTich = dungTich;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public Date getNgayThem() {
		return ngayThem;
	}
	public void setNgayThem(Date ngayThem) {
		this.ngayThem = ngayThem;
	}
	public BigDecimal getGia() {
		return gia;
	}
	public void setGia(BigDecimal gia) {
		this.gia = gia;
	}
	public int getSlt() {
		return slt;
	}
	public void setSlt(int slt) {
		this.slt = slt;
	}
	public int getLoai() {
		return loai;
	}
	public void setLoai(int loai) {
		this.loai = loai;
	}
	public NhanHang getNhanHang() {
		return nhanHang;
	}
	public void setNhanHang(NhanHang nhanHang) {
		this.nhanHang = nhanHang;
	}
	public DanhGia getDanhGia() {
		return danhGia;
	}
	public void setDanhGia(DanhGia danhGia) {
		this.danhGia = danhGia;
	}
	public Collection<SanPham_KM> getDsSPKM() {
		return dsSPKM;
	}
	public void setDsSPKM(Collection<SanPham_KM> dsSPKM) {
		this.dsSPKM = dsSPKM;
	}
	public Collection<GioHang_SanPham> getDsGHSP() {
		return dsGHSP;
	}
	public void setDsGHSP(Collection<GioHang_SanPham> dsGHSP) {
		this.dsGHSP = dsGHSP;
	}
	

}
