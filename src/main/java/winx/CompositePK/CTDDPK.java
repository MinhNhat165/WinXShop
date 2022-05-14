package winx.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import winx.entity.DonDat;
import winx.entity.SanPham;

@Embeddable
public class CTDDPK implements Serializable {
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "MaDD")
	private String maDD;

	public CTDDPK() {
		super();
	}

	public CTDDPK(String maSP, String maDD) {
		super();
		this.maSP = maSP;
		this.maDD = maDD;
	}

}
