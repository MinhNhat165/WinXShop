package winx.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TINMOI")
public class TinMoi {
	@Id
	@Column(name = "MaTin")
	private String maTin;
	@Column(name = "Anh")
	private String anh;
	@Column(name = "TenTin")
	private String tenTin;
	@Column(name = "NoiDung")
	private String noiDung;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	@Column(name = "NgayTao")
	private Date ngayTao;
	@Column(name = "TrangThai")
	private byte trangThai;

	public String getMaTin() {
		return maTin;
	}

	public void setMaTin(String maTin) {
		this.maTin = maTin;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	public byte getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(byte trangThai) {
		this.trangThai = trangThai;
	}

	public String getTenTin() {
		return tenTin;
	}

	public void setTenTin(String tenTin) {
		this.tenTin = tenTin;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	
}
