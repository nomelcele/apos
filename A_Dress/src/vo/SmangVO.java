package vo;

public class SmangVO {
	private String pro_code, pro_name, shop_name, pro_barcode, pro_img;
	private int pro_salerate;
	
	public int getPro_salerate() {
		return pro_salerate;
	}
	public void setPro_salerate(int pro_salerate) {
		this.pro_salerate = pro_salerate;
	}
	public String getPro_barcode() {
		return pro_barcode;
	}
	public void setPro_barcode(String pro_barcode) {
		this.pro_barcode = pro_barcode;
	}
	public String getPro_img() {
		return pro_img;
	}
	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
	private int pro_price, sto_size, sto_amount, pro_mile, pro_many, sto_shop_num;
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
	}
	public int getPro_mile() {
		return pro_mile;
	}
	public void setPro_mile(int pro_mile) {
		this.pro_mile = pro_mile;
	}
	public int getPro_many() {
		return pro_many;
	}
	public void setPro_many(int pro_many) {
		this.pro_many = pro_many;
	}
	public int getSto_shop_num() {
		return sto_shop_num;
	}
	public void setSto_shop_num(int sto_shop_num) {
		this.sto_shop_num = sto_shop_num;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	
	public int getSto_size() {
		return sto_size;
	}
	public void setSto_size(int sto_size) {
		this.sto_size = sto_size;
	}
	public int getSto_amount() {
		return sto_amount;
	}
	public void setSto_amount(int sto_amount) {
		this.sto_amount = sto_amount;
	}
	
}
