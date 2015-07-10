package vo;

public class SaleVO {
	private String set_pro_code, set_pro_salerate, sale_begin, sale_end;
	private String sale_writer, sale_sub, sale_content;

	public String getSet_pro_code() {
		return set_pro_code;
	}

	public String getSale_writer() {
		return sale_writer;
	}

	public void setSale_writer(String sale_writer) {
		this.sale_writer = sale_writer;
	}

	public String getSale_sub() {
		return sale_sub;
	}

	public void setSale_sub(String sale_sub) {
		this.sale_sub = sale_sub;
	}

	public void setSet_pro_code(String set_pro_code) {
		this.set_pro_code = set_pro_code;
	}

	public String getSet_pro_salerate() {
		return set_pro_salerate;
	}

	public void setSet_pro_salerate(String set_pro_salerate) {
		this.set_pro_salerate = set_pro_salerate;
	}

	public String getSale_begin() {
		return sale_begin;
	}

	public void setSale_begin(String sale_begin) {
		this.sale_begin = sale_begin;
	}

	public String getSale_end() {
		return sale_end;
	}

	public void setSale_end(String sale_end) {
		this.sale_end = sale_end;
	}

	public String getSale_content() {
		return sale_content;
	}

	public void setSale_content(String sale_content) {
		this.sale_content = sale_content;
	}
	
}
