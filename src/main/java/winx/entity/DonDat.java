package winx.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
}
	
	
