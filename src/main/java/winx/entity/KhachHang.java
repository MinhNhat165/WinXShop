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
	

}
