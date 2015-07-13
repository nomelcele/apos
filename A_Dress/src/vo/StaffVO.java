package vo;

// ÄÃ·³¸í : staff_num, staff_name, staff_position, staff_tel, staff_shopnum, staff_id, staff_pwd
public class StaffVO {
	private int staff_num, staff_position, staff_shopnum;
	private String staff_name, staff_tel, staff_id, staff_pwd,shop_sname;
	public String getShop_sname() {
		return shop_sname;
	}
	public void setShop_sname(String shop_sname) {
		this.shop_sname = shop_sname;
	}
	public int getStaff_num() {
		return staff_num;
	}
	public void setStaff_num(int staff_num) {
		this.staff_num = staff_num;
	}
	public int getStaff_position() {
		return staff_position;
	}
	public void setStaff_position(int staff_position) {
		this.staff_position = staff_position;
	}
	public int getStaff_shopnum() {
		return staff_shopnum;
	}
	public void setStaff_shopnum(int staff_shopnum) {
		this.staff_shopnum = staff_shopnum;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_tel(String staff_tel) {
		this.staff_tel = staff_tel;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public String getStaff_tel() {
		return staff_tel;
	}
	public void setStaff__tel(String staff_tel) {
		this.staff_tel = staff_tel;
	}
	public String getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}
	public String getStaff_pwd() {
		return staff_pwd;
	}
	public void setStaff_pwd(String staff_pwd) {
		this.staff_pwd = staff_pwd;
	}
	
}
