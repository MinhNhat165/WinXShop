package winx.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import winx.entity.KhachHang;

@Embeddable
public class CTDGPK implements Serializable {
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "MaKH")
	private String maKH;

	public CTDGPK() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CTDGPK(String maSP, String maKH) {
		super();
		this.maSP = maSP;
		this.maKH = maKH;
	}

}
