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
//xml�� �о� ���δ�.( SAXBuilder, URL, Document, Element, ArrayList�� Collection)
//������� �˻�� �м��ؼ� xml�� �ڽĿ���� ���� ��ġ�� ������ ã�Ƽ�
//������� �Ѵ�.
public class Barcoder {
	//private static Suggest suggest;
	private Document doc;
	private Element root;

//	public static synchronized Suggest getSuggest() {
//		if (suggest == null)
//			suggest = new Suggest();
//		return suggest;
//	}
//�ش� ����� xml������ �д´�.
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
		
		while (it.hasNext()) {// �ݺ��ڰ� ��ġ�� ���� ����ĭ�� ��Ұ� ������ true
			
	    	result=it.next().getText();
	    	System.out.println("result:" + result);
			
			
		}
	
		return result;
	}
}
