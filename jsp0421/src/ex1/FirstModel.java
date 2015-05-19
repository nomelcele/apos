package ex1;

public class FirstModel {
	private int num ;

	public FirstModel() {
		num =20;
	}

	public String printMsg(String msg) {
		return "당신이 입력한 메세지는:" + msg + "입니다." + "Num:" + num;
	}

}
