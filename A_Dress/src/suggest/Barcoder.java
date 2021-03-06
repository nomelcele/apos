package suggest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

//http://192.168.7.178/jspFinal_0508_15/book.xml
//xml을 읽어 들인다.( SAXBuilder, URL, Document, Element, ArrayList와 Collection)
//사용자의 검색어를 분석해서 xml의 자식요소의 값과 일치한 값들을 찾아서
//돌려줘야 한다.
public class Barcoder {
	//private static Suggest suggest;
	private Document doc;
	private Element root;

//	public static synchronized Suggest getSuggest() {
//		if (suggest == null)
//			suggest = new Suggest();
//		return suggest;
//	}
//해당 경로의 xml파일을 읽는다.
	public Barcoder() {
		SAXBuilder sb = new SAXBuilder();
		String path = "C:\\kosta97\\spring\\workspace"
				+ "\\A_Dress\\src\\suggest\\barcode.xml";
		try {
			doc = sb.build(path);
			root = doc.getRootElement();
		} catch (JDOMException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	
	public String getBarcode() {
		List<Element> list = new ArrayList<Element>();
		list = root.getChildren("keyword");
		Iterator<Element> it = list.iterator();
		System.out.println("barcode");
		String result = new String();
		
		while (it.hasNext()) {// 반복자가 위치한 곳에 다음칸에 요소가 있으면 true
			
	    	result=it.next().getText();
	    	System.out.println("result:" + result);
			
			
		}
	
		return result;
	}
}
