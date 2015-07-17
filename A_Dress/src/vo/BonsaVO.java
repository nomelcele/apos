package vo;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

// 컬럼명 일치!
public class BonsaVO {
	// Valid 안걸어 되는것
	private int bon_num;
	private String bon_job, bon_tel, bon_date;
	
	// Valid 걸어야하는 것들
	@NotEmpty(message = "이름을 입력하세요.")
	private String bon_name;
	@NotEmpty(message = "아이디를 입력하세요.")
	@Size(min = 4, max = 8, message = "ID는 4~8자리로 입력하세요")
	private String bon_id;
	@NotEmpty(message = "비밀번호을 입력하세요.")
	@Size(min = 6, max = 12, message = "PWD는 6~12자리로 입력하세요")
	private String bon_pwd;
	@NotEmpty(message = "비밀번호 확인을 입력하세요.")
	private String bon_pwd_ck;
	
	public String getBon_pwd_ck() {
		return bon_pwd_ck;
	}
	public void setBon_pwd_ck(String bon_pwd_ck) {
		this.bon_pwd_ck = bon_pwd_ck;
	}
	public int getBon_num() {
		return bon_num;
	}
	public void setBon_num(int bon_num) {
		this.bon_num = bon_num;
	}
	public String getBon_name() {
		return bon_name;
	}
	public void setBon_name(String bon_name) {
		this.bon_name = bon_name;
	}
	public String getBon_id() {
		return bon_id;
	}
	public void setBon_id(String bon_id) {
		this.bon_id = bon_id;
	}
	public String getBon_pwd() {
		return bon_pwd;
	}
	public void setBon_pwd(String bon_pwd) {
		this.bon_pwd = bon_pwd;
	}
	public String getBon_job() {
		return bon_job;
	}
	public void setBon_job(String bon_job) {
		this.bon_job = bon_job;
	}
	public String getBon_tel() {
		return bon_tel;
	}
	public void setBon_tel(String bon_tel) {
		this.bon_tel = bon_tel;
	}
	public String getBon_date() {
		return bon_date;
	}
	public void setBon_date(String bon_date) {
		this.bon_date = bon_date;
	}
	
	
}
