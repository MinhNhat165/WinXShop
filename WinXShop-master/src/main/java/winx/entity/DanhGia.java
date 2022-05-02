package winx.entity;

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
	@OneToOne (mappedBy = "danhGia", fetch = FetchType.EAGER )
	private SanPham sangPham;
	@OneToMany(mappedBy = "danhGia", fetch = FetchType.EAGER)
	private List<CTDG> dsCTDG;
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
	public SanPham getSangPham() {
		return sangPham;
	}
	public void setSangPham(SanPham sangPham) {
		this.sangPham = sangPham;
	}
	public List<CTDG> getDsCTDG() {
		return dsCTDG;
	}
	public void setDsCTDG(List<CTDG> dsCTDG) {
		this.dsCTDG = dsCTDG;
	}
	public DanhGia(String maDG, Float diemGD, SanPham sangPham, List<CTDG> dsCTDG) {
		super();
		this.maDG = maDG;
		this.diemGD = diemGD;
		this.sangPham = sangPham;
		this.dsCTDG = dsCTDG;
	}
	
}
