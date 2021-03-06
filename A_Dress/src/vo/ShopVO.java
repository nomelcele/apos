package vo;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

// 컬럼명 일치!
public class ShopVO {
	// 매장이 가입 할때 필요한 요소
	// name, tel, adr, date, mail, master img, crnum
	// Valid : 이름, 사업자번호, 이메일, 매장이름
	@NotEmpty(message = "이름을 입력해주세요")
	@Pattern(regexp=".*[ㄱ-힣]", message="한글만 사용가능합니다")
	private String shop_master;
	//@DecimalMin(value="100000",message="")
	
	@NotEmpty(message = "ShopName을 입력해주세요")
	@Pattern(regexp=".*[ㄱ-힣]", message="한글만 사용가능합니다")
	private String shop_name; 
//	@Email(message = "올바른 이메일 형식이 아닙니다.")
	@NotEmpty(message = "이메일을 입력하세요.")
	@Pattern(regexp="^[_0-9a-zA-Z-]+@[0-9a-zA-Z]+(.[_0-9a-zA-Z-]+)*$", message = "올바른 이메일 형식이 아닙니다.")
	private String shop_mail;
	
	private String shop_adr;
	private String shop_date;
	private String shop_img;
	private String shop_id;
	private int shop_num;
	private int shop_bonnum;
	private int shop_crnum;
	private float shop_map_x, shop_map_y;
	private String shop_tel;
	private String tel1, tel2, tel3;
	private MultipartFile selfimg;
	private String shop_pwd;
	private String pwdchk;
	
	public String getPwdchk() {
		return pwdchk;
	}
	public void setPwdchk(String pwdchk) {
		this.pwdchk = pwdchk;
	}
	
	public MultipartFile getSelfimg() {
		return selfimg;
	}
	public void setSelfimg(MultipartFile selfimg) {
		this.selfimg = selfimg;
	}
	public String getShop_name() {
		return shop_name;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_tel() {
		return shop_tel;
	}
	public void setShop_tel(String shop_tel) {
		this.shop_tel = shop_tel;
	}
	public String getShop_adr() {
		return shop_adr;
	}
	public void setShop_adr(String shop_adr) {
		this.shop_adr = shop_adr;
	}
	public String getShop_date() {
		return shop_date;
	}
	public void setShop_date(String shop_date) {
		this.shop_date = shop_date;
	}
	public String getShop_mail() {
		return shop_mail;
	}
	public void setShop_mail(String shop_mail) {
		this.shop_mail = shop_mail;
	}
	public String getShop_master() {
		return shop_master;
	}
	public void setShop_master(String shop_master) {
		this.shop_master = shop_master;
	}
	public String getShop_img() {
		return shop_img;
	}
	public void setShop_img(String shop_img) {
		this.shop_img = shop_img;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_pwd() {
		return shop_pwd;
	}
	public void setShop_pwd(String shop_pwd) {
		this.shop_pwd = shop_pwd;
	}
	public int getShop_num() {
		return shop_num;
	}
	public void setShop_num(int shop_num) {
		this.shop_num = shop_num;
	}
	public int getShop_bonnum() {
		return shop_bonnum;
	}
	public void setShop_bonnum(int shop_bonnum) {
		this.shop_bonnum = shop_bonnum;
	}
	public int getShop_crnum() {
		return shop_crnum;
	}
	public void setShop_crnum(int shop_crnum) {
		this.shop_crnum = shop_crnum;
	}
	public float getShop_map_x() {
		return shop_map_x;
	}
	public void setShop_map_x(float shop_map_x) {
		this.shop_map_x = shop_map_x;
	}
	public float getShop_map_y() {
		return shop_map_y;
	}
	public void setShop_map_y(float shop_map_y) {
		this.shop_map_y = shop_map_y;
	}
}
