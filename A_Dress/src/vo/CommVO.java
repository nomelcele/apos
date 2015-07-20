package vo;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class CommVO {
	private int r_num, comm_num;
	private String comm_writer, comm_date, comm_bonum;
	@NotEmpty(message = "³»¿ëÀ» ÀÔ·ÂÇÏ¼¼¿ä.")
	@Pattern(regexp=".*[0-9a-zA-Z¤¡-ÆR]", message="Àß¸øµÈ ÀÔ·ÂÀÔ´Ï´Ù.(Æ¯¼ö¹®ÀÚ <,> »ç¿ë ºÒ°¡)")
	private String comm_cont;
	
	public String getComm_bonum() {
		return comm_bonum;
	}
	public void setComm_bonum(String comm_bonum) {
		this.comm_bonum = comm_bonum;
	}
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public int getComm_num() {
		return comm_num;
	}
	public void setComm_num(int comm_num) {
		this.comm_num = comm_num;
	}
	public String getComm_writer() {
		return comm_writer;
	}
	public void setComm_writer(String comm_writer) {
		this.comm_writer = comm_writer;
	}
	public String getComm_cont() {
		return comm_cont;
	}
	public void setComm_cont(String comm_cont) {
		this.comm_cont = comm_cont;
	}
	public String getComm_date() {
		return comm_date;
	}
	public void setComm_date(String comm_date) {
		this.comm_date = comm_date;
	}
	
}
