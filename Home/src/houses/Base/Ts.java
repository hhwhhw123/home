package houses.Base;

import java.util.Date;


public class Ts {
	private int tsID;
	private String tsyhm;
	private Date tsrq;
	private String tsnr;
	private String ts_status;
	public int getTsID() {
		return tsID;
	}
	public void setTsID(int tsID) {
		this.tsID = tsID;
	}
	public String getTsyhm() {
		return tsyhm;
	}
	public void setTsyhm(String tsyhm) {
		this.tsyhm = tsyhm;
	}
	public Date getTsrq() {
		return tsrq;
	}
	public void setTsrq(Date tsrq) {
		this.tsrq = tsrq;
	}
	public String getTsnr() {
		return tsnr;
	}
	public void setTsnr(String tsnr) {
		this.tsnr = tsnr;
	}
	public String getTs_status() {
		return ts_status;
	}
	public void setTs_status(String tsStatus) {
		ts_status = tsStatus;
	}
	
}
