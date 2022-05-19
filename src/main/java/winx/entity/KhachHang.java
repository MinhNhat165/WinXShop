package winx.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KHACHHANG")
public class KhachHang {
	@Id
	@Column(name = "MaKH")
	private String maKH;

	@Column(name = "HoTen")
	private String hoTen;
	@Column(name = "Anh")
	private String anh;
	@Column(name = "NgaySinh")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngaySinh;

	@Column(name = "DiaChi")
	private String diaChi;
	@Column(name = "Phai")
	private byte phai;
	@Column(name = "SDT")
	private String sdt;
	@OneToOne
	@JoinColumn(name = "Email")
	private TaiKhoan taiKhoan;
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.EAGER)
	private Collection<CTDG> dsCTDG;
	@OneToMany(mappedBy = "khachHang")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<GioHang_SanPham> dsGHSP;
	@OneToMany(mappedBy = "khachHang")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<DonDat> dsKH;

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public byte getPhai() {
		return phai;
	}

	public void setPhai(byte phai) {
		this.phai = phai;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public TaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public Collection<CTDG> getDsCTDG() {
		return dsCTDG;
	}

	public void setDsCTDG(Collection<CTDG> dsCTDG) {
		this.dsCTDG = dsCTDG;
	}

	public Collection<GioHang_SanPham> getDsGHSP() {
		return dsGHSP;
	}

	public void setDsGHSP(Collection<GioHang_SanPham> dsGHSP) {
		this.dsGHSP = dsGHSP;
	}

	public Collection<DonDat> getDsKH() {
		return dsKH;
	}

	public void setDsKH(Collection<DonDat> dsKH) {
		this.dsKH = dsKH;
	}

}
