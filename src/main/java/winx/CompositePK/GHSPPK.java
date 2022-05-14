package winx.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import winx.entity.KhachHang;
import winx.entity.SanPham;

@Embeddable
public class GHSPPK implements Serializable {
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "MaKH")
	private String maKH;
	

	public GHSPPK() {
		super();
		// TODO Auto-generated constructor stub
	}


	public GHSPPK(String maSP, String maKH) {
		super();
		this.maSP = maSP;
		this.maKH = maKH;
	}

}
