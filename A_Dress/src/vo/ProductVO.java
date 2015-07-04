package vo;

import org.springframework.web.multipart.MultipartFile;

// 컬럼명 일치
public class ProductVO {
	private int pro_num, pro_size, pro_price,pro_amount;
	private String pro_name, pro_code, pro_barcode, pro_img,
	pro_date, pro_shopname;
	private String sto_amount,sto_size,shop_name;
	private MultipartFile bimg,pimg;
	private String bimgpath,pimgpath;
	public String getBimgpath() {
		return bimgpath;
	}
	public void setBimgpath(String bimgpath) {
		this.bimgpath = bimgpath;
	}
	public String getPimgpath() {
		return pimgpath;
	}
	public void setPimgpath(String pimgpath) {
		this.pimgpath = pimgpath;
	}
	public MultipartFile getPimg() {
		return pimg;
	}
	public void setPimg(MultipartFile pimg) {
		this.pimg = pimg;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getSto_amount() {
		return sto_amount;
	}
	public void setSto_amount(String sto_amount) {
		this.sto_amount = sto_amount;
	}
	public String getSto_size() {
		return sto_size;
	}
	public void setSto_size(String sto_size) {
		this.sto_size = sto_size;
	}
	public int getPro_amount() {
		return pro_amount;
	}
	public void setPro_amount(int pro_amount) {
		this.pro_amount = pro_amount;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public int getPro_size() {
		return pro_size;
	}
	public void setPro_size(int pro_size) {
		this.pro_size = pro_size;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
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
	public String getPro_date() {
		return pro_date;
	}
	public void setPro_date(String pro_date) {
		this.pro_date = pro_date;
	}
	public String getPro_shopname() {
		return pro_shopname;
	}
	public void setPro_shopname(String pro_shopname) {
		this.pro_shopname = pro_shopname;
	}
	public MultipartFile getBimg() {
		return bimg;
	}
	public void setBimg(MultipartFile bimg) {
		this.bimg = bimg;
	}


	

}
