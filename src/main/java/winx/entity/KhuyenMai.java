package winx.entity;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KHUYENMAI")
public class KhuyenMai {
	@Id
	@Column(name = "MaKM")
	private String maKM;
	@Column(name = "TenKM")
	private String tenKM;

	@Column(name = "NgayBD")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayBD;
	@Column(name = "NgayKT")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngayKT;
	@Column(name = "GiaTriKM")
	private int giaTriKM;
	@Column(name = "TrangThai")
	private byte trangThai;
	@Column(name = "MoTa")
	private String moTa;
	@OneToMany(mappedBy = "khuyenMai", fetch = FetchType.EAGER)
	private Collection<SanPham_KM> dsSPKM;
	@OneToMany(mappedBy = "khuyenMai")
	private Collection<CTDD> dsCTDD;

	public String getMaKM() {
		return maKM;
	}

	public void setMaKM(String maKM) {
		this.maKM = maKM;
	}

	public String getTenKM() {
		return tenKM;
	}

	public void setTenKM(String tenKM) {
		this.tenKM = tenKM;
	}

	public Date getNgayBD() {
		return ngayBD;
	}

	public void setNgayBD(Date ngayBD) {
		this.ngayBD = ngayBD;
	}

	public Date getNgayKT() {
		return ngayKT;
	}

	public void setNgayKT(Date ngayKT) {
		this.ngayKT = ngayKT;
	}

	public int getGiaTriKM() {
		return giaTriKM;
	}

	public void setGiaTriKM(int giaTriKM) {
		this.giaTriKM = giaTriKM;
	}

	public byte getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(byte trangThai) {
		this.trangThai = trangThai;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Collection<SanPham_KM> getDsSPKM() {
		return dsSPKM;
	}

	public void setDsSPKM(Collection<SanPham_KM> dsSPKM) {
		this.dsSPKM = dsSPKM;
	}

	public Collection<CTDD> getDsCTDD() {
		return dsCTDD;
	}

	public void setDsCTDD(Collection<CTDD> dsCTDD) {
		this.dsCTDD = dsCTDD;
	}

}
