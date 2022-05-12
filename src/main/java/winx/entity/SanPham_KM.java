package winx.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import winx.CompositePK.SPKMPK;

@Entity
@Table(name = "SANPHAM_KM")

public class SanPham_KM implements Serializable {
	@EmbeddedId
	private SPKMPK maSPKM;

	@ManyToOne
	@MapsId("maSP")
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;

	@ManyToOne
	@MapsId("maKM")
	@JoinColumn(name = "MaKM")
	private KhuyenMai khuyenMai;

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

	public KhuyenMai getKhuyenMai() {
		return khuyenMai;
	}

	public void setKhuyenMai(KhuyenMai khuyenMai) {
		this.khuyenMai = khuyenMai;
	}

	public SanPham_KM() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SanPham_KM(SanPham sanPham, KhuyenMai khuyenMai) {
		this.maSPKM = new SPKMPK(sanPham.getMaSP(), khuyenMai.getMaKM());
		this.sanPham = sanPham;
		this.khuyenMai = khuyenMai;
	}

}
