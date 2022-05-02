package winx.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
	private int slt ;
	@Column(name = "Loai")
	private int loai;
	@ManyToOne
	@JoinColumn(name = "MaNH")
	private NhanHang nhanHang;
	@OneToOne
	@JoinColumn(name = "MaDG")
	private DanhGia danhGia;
	
}
