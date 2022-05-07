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

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KHACHHANG")
public class KhachHang {
	@Id
	@Column(name = "MaKH")
	private String maKH;
	@Column(name = "HoTen")
	private String hoTen;
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
	private Collection<GioHang_SanPham> dsGDSP;
	@OneToMany(mappedBy = "khachHang")
	private Collection<DonDat> dsKH;
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
	public Collection<GioHang_SanPham> getDsGDSP() {
		return dsGDSP;
	}
	public void setDsGDSP(Collection<GioHang_SanPham> dsGDSP) {
		this.dsGDSP = dsGDSP;
	}
	public Collection<DonDat> getDsKH() {
		return dsKH;
	}
	public void setDsKH(Collection<DonDat> dsKH) {
		this.dsKH = dsKH;
	}

}
