package winx.entity;




import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "DANHGIA")
public class DanhGia {
	@Id
	@Column(name = "MaDG")
	private String maDG;
	@Column(name = "DiemDG")
	private Float  diemGD;

	@OneToOne (mappedBy = "danhGia")

	private SanPham sanPham;

	@OneToMany(mappedBy = "danhGia", fetch = FetchType.EAGER)
	private Collection<CTDG> dsCTDG;
	public String getMaDG() {
		return maDG;
	}
	public void setMaDG(String maDG) {
		this.maDG = maDG;
	}
	public Float getDiemGD() {
		return diemGD;
	}
	public void setDiemGD(Float diemGD) {
		this.diemGD = diemGD;
	}

	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;

	}
	public Collection<CTDG> getDsCTDG() {
		return dsCTDG;
	}
	public void setDsCTDG(Collection<CTDG> dsCTDG) {
		this.dsCTDG = dsCTDG;
	}

	public DanhGia(String maDG, Float diemGD, SanPham sanPham, Collection<CTDG> dsCTDG) {
		super();
		this.maDG = maDG;
		this.diemGD = diemGD;
		this.sanPham = sanPham;

		this.dsCTDG = dsCTDG;
	}
	
}
