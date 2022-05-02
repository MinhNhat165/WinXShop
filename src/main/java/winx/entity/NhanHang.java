package winx.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "NHANHANG")

public class NhanHang {
	@Id
	@Column(name="MaNH")
	private String maNH;
	@Column(name="TenNH")
	private String teNH;
	@Column(name="TrangThai")
	private byte trangThai;
	@Column(name = "Anh")
	private String anh;
	@OneToMany(mappedBy = "nhanHang", fetch = FetchType.EAGER)
	private Collection<SanPham> dsSanPham;
	public String getMaNH() {
		return maNH;
	}
	public void setMaNH(String maNH) {
		this.maNH = maNH;
	}
	public String getTeNH() {
		return teNH;
	}
	public void setTeNH(String teNH) {
		this.teNH = teNH;
	}
	public byte getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(byte trangThai) {
		this.trangThai = trangThai;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Collection<SanPham> getDsSanPham() {
		return dsSanPham;
	}
	public void setDsSanPham(Collection<SanPham> dsSanPham) {
		this.dsSanPham = dsSanPham;
	}
	
}
