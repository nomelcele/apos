package suggest;

import java.io.IOException;
import java.net.URL;
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
public class Suggest {
	private static Suggest suggest;
	private Document doc;
	private Element root;

	public static synchronized Suggest getSuggest() {
		if (suggest == null)
			suggest = new Suggest();
		return suggest;
	}

	public Suggest() {
		SAXBuilder sb = new SAXBuilder();
		String path = "C:\\kosta97\\semi\\semi_Pos\\WebContent\\shop\\suggest.xml";
		try {
			doc = sb.build(path);
			root = doc.getRootElement();
		} catch (JDOMException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String[] getSuggest(String key) {
		ArrayList<String> sugList = new ArrayList<String>();
		List<Element> list = new ArrayList<Element>();
		list = root.getChildren("keyword");
		System.out.println("key :" + key);
		Iterator<Element> it = list.iterator();

		key = key.toLowerCase();
		while (it.hasNext()) {// �ݺ��ڰ� ��ġ�� ���� ����ĭ�� ��Ұ� ������ true
			String result = it.next().getText();
			String compare = result.toLowerCase();
			// ����ڰ� �Է��� ������ �����ϴ� �������� �Ǻ� �ϰ� �ʹٸ�?
			if (compare.startsWith(key)) {
				System.out.println("compare:" + compare);
				sugList.add(result);
			}
		}
		// end while
		int sugSize = sugList.size();
		if (sugSize > 0) {
			// ��� ����Ʈ�� �迭�� ��ȯ
			String[] sugArr = new String[sugSize];
			for (String e : sugList) {
				System.out.println("test:" + e);
			}
			return sugList.toArray(sugArr);
		}
		return null;
	}
}
