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
//xml을 읽어 들인다.( SAXBuilder, URL, Document, Element, ArrayList와 Collection)
//사용자의 검색어를 분석해서 xml의 자식요소의 값과 일치한 값들을 찾아서
//돌려줘야 한다.
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
		while (it.hasNext()) {// 반복자가 위치한 곳에 다음칸에 요소가 있으면 true
			String result = it.next().getText();
			String compare = result.toLowerCase();
			// 사용자가 입력한 값으로 시작하는 것인지를 판별 하고 싶다면?
			if (compare.startsWith(key)) {
				System.out.println("compare:" + compare);
				sugList.add(result);
			}
		}
		// end while
		int sugSize = sugList.size();
		if (sugSize > 0) {
			// 어레이 리스트를 배열로 반환
			String[] sugArr = new String[sugSize];
			for (String e : sugList) {
				System.out.println("test:" + e);
			}
			return sugList.toArray(sugArr);
		}
		return null;
	}
}
