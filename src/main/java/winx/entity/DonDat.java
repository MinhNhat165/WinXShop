package winx.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "DONDAT")
public class DonDat {
	@Id
	@Column(name = "MaDD")
	private String maDD;
	@Column(name = "TongTien")
	private BigDecimal tongTien;
	@Column(name = "DiaChi")
	private String diaChi;
	@Column(name = "NgayDat")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayDat;
	@Column(name = "DaThanhToan")
	private byte daThanhToan;
	@Column(name = "SDTNguoiNhan")
	private String sdtNguoiNhan;
	@Column(name = "TenNguoiNhan")
	private String tenNguoiNhan;
	@ManyToOne
	@JoinColumn(name = "MaKH")
	private KhachHang khachHang;
	@OneToMany(mappedBy = "donDat")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<CTDD> dsCTDD;

	public String getMaDD() {
		return maDD;
	}

	public void setMaDD(String maDD) {
		this.maDD = maDD;
	}

	public BigDecimal getTongTien() {
		return tongTien;
	}

	public void setTongTien(BigDecimal tongTien) {
		this.tongTien = tongTien;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Date getNgayDat() {
		return ngayDat;
	}

	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}

	public byte getDaThanhToan() {
		return daThanhToan;
	}

	public void setDaThanhToan(byte daThanhToan) {
		this.daThanhToan = daThanhToan;
	}

	public String getSdtNguoiNhan() {
		return sdtNguoiNhan;
	}

	public void setSdtNguoiNhan(String sdtNguoiNhan) {
		this.sdtNguoiNhan = sdtNguoiNhan;
	}

	public String getTenNguoiNhan() {
		return tenNguoiNhan;
	}

	public void setTenNguoiNhan(String tenNguoiNhan) {
		this.tenNguoiNhan = tenNguoiNhan;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

}
