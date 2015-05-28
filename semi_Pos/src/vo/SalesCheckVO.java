package vo;

public class SalesCheckVO {
	private int count, sell_cash, sell_card;
	private String date,sell_shopname;


	public synchronized String getSell_shopname() {
		return sell_shopname;
	}

	public synchronized void setSell_shopname(String sell_shopname) {
		this.sell_shopname = sell_shopname;
	}

	public synchronized String getDate() {
		return date;
	}

	public synchronized void setDate(String date) {
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
