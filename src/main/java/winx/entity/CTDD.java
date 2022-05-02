package winx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import winx.CompositePK.CTDDPK;

@Entity
@IdClass(CTDDPK.class)
@Table(name = "CTDD")
public class CTDD {
	@Id
	@ManyToOne
	@JoinColumn(name="MaDD")
	private DonDat donDat;
	@Id
	@ManyToOne
	@JoinColumn(name="MaSP")
	private SanPham sanPham;
	@Column(name = "SoLuong")
	private int soLuong;
	@ManyToOne
	@JoinColumn(name = "MaKM")
	private KhuyenMai khuyenMai; 
	
}
