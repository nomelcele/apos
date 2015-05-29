package vo;

public class SalesCheckVO {
	private int count, sell_cash, sell_card;
	private String date,sell_shopname,sell_proname;


	public String getSell_proname() {
		return sell_proname;
	}

	public  void setSell_proname(String sell_proname) {
		this.sell_proname = sell_proname;
	}

	public String getSell_shopname() {
		return sell_shopname;
	}

	public  void setSell_shopname(String sell_shopname) {
		this.sell_shopname = sell_shopname;
	}

	public  String getDate() {
		return date;
	}

	public  void setDate(String date) {
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
