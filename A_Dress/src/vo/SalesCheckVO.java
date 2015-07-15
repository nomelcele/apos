package vo;

// sell_mileage, sell_shopnum ¾øÀ½!!
public class SalesCheckVO {
	private String sell_memname;
	private int sell_shopnum,sell_mileage;
	private String sell_date, sell_proimg;
	private int count, sell_cash, sell_card, sell_pronum, sell_many,
			sell_memnum, sell_num;
	private int sell_size;
	private int sell_sell;
	
	
	
	
	
	public int getSell_sell() {
		return sell_sell;
	}

	public void setSell_sell(int sell_sell) {
		this.sell_sell = sell_sell;
	}

	public int getSell_mileage() {
		return sell_mileage;
	}

	public void setSell_mileage(int sell_mileage) {
		this.sell_mileage = sell_mileage;
	}

	public int getSell_size() {
		return sell_size;
	}

	public void setSell_size(int sell_size) {
		this.sell_size = sell_size;
	}

	public int getSell_shopnum() {
		return sell_shopnum;
	}

	public void setSell_shopnum(int sell_shopnum) {
		this.sell_shopnum = sell_shopnum;
	}

	public String getSell_proimg() {
		return sell_proimg;
	}

	public void setSell_proimg(String sell_proimg) {
		this.sell_proimg = sell_proimg;
	}
	public int getSell_num() {
		return sell_num;
	}

	public String getSell_date() {
		return sell_date;
	}

	public void setSell_date(String sell_date) {
		this.sell_date = sell_date;
	}

	public void setSell_num(int sell_num) {
		this.sell_num = sell_num;
	}

	public String getSell_memname() {
		return sell_memname;
	}

	public void setSell_memname(String sell_memname) {
		this.sell_memname = sell_memname;
	}

	public int getSell_memnum() {
		return sell_memnum;
	}

	public void setSell_memnum(int sell_memnum) {
		this.sell_memnum = sell_memnum;
	}

	public int getSell_pronum() {
		return sell_pronum;
	}

	public void setSell_pronum(int sell_pronum) {
		this.sell_pronum = sell_pronum;
	}

	public int getSell_many() {
		return sell_many;
	}

	public void setSell_many(int sell_many) {
		this.sell_many = sell_many;
	}

	private String date, sell_shopname, sell_proname;

	public String getSell_proname() {
		return sell_proname;
	}

	public void setSell_proname(String sell_proname) {
		this.sell_proname = sell_proname;
	}

	public String getSell_shopname() {
		return sell_shopname;
	}

	public void setSell_shopname(String sell_shopname) {
		this.sell_shopname = sell_shopname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getSell_cash() {
		return sell_cash;
	}

	public void setSell_cash(int sell_cash) {
		this.sell_cash = sell_cash;
	}

	public int getSell_card() {
		return sell_card;
	}

	public void setSell_card(int sell_card) {
		this.sell_card = sell_card;
	}
}
