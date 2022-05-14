package winx.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class SPKMPK implements Serializable {
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "MaKM")
	private String maKM;

	public SPKMPK() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SPKMPK(String maSP, String maKM) {
		super();
		this.maSP = maSP;
		this.maKM = maKM;
	}

}
