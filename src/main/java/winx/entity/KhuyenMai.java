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

}
