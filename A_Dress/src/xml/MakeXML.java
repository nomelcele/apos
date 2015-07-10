package xml;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import java.util.Iterator;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.jdom2.output.Format.TextMode;



public class MakeXML {

	

	public void shSeggest(ArrayList<String> list) {
		/*
		 * --- select tname, name1,name2,name3,name4,name5 from t ex) select
		 * tname, names from team; application names = 김길동-구하라-소효진
		 * split,StrintTokenizer 추려서 배치할 수 있어야 .. <kosta97> <team>
		 * <tname>해피조</tname> <name1>김길동</name1> <name2>구하라</name2>
		 * <name3>소효진</name3> </team> </kosta97>
		 */
		// Database로 부터 읽어 들인 값을 -> xml문서로 보내는 작업
		// root 만들기

		String str = "";
		Iterator<String> it = list.iterator();

		Element root = new Element("root");
		Element keyword = null;

		// 문자 배치

		while (it.hasNext()) {
			str = it.next();
			keyword = new Element("keyword");
			root.addContent(keyword);
			keyword.setText(str);
		}

		// 문서 객체 생성
		Document doc = new Document();

		doc.setRootElement(root);

		XMLOutputter xo = new XMLOutputter();
		Format f = xo.getFormat();
		f.setEncoding("UTF-8");// 한글처리
		f.setIndent("  ");// 들여쓰기
		f.setLineSeparator("\r\n");// 개행처리
		f.setTextMode(TextMode.TRIM);// 문자형식 줄바꿈 해제
		xo.setFormat(f); // 설정을 xo객체에 초기화
		try {
			xo.output(doc, System.out);
			xo.output(doc,
					new FileOutputStream("C:\\kosta97\\spring\\workspace\\A_Dress\\src\\suggest\\suggest.xml"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 출력

	}

//	public static void main(String[] args) {
//		/*
//		 * --- select tname, name1,name2,name3,name4,name5 from t ex) select
//		 * tname, names from team; application names = 김길동-구하라-소효진
//		 * split,StrintTokenizer 추려서 배치할 수 있어야 .. <kosta97> <team>
//		 * <tname>해피조</tname> <name1>김길동</name1> <name2>구하라</name2>
//		 * <name3>소효진</name3> </team> </kosta97>
//		 */
//		// Database로 부터 읽어 들인 값을 -> xml문서로 보내는 작업
//		// root 만들기
//
//
//		ArrayList<String> list = new ArrayList<String>();
//		
//		String str = "";
//		Iterator<String> it = list.iterator();
//
//		Element root = new Element("root");
//		Element keyword = new Element("keyword");
//
//		Element name4 = null;
//
//		// 문자 배치
//
//		while (it.hasNext()) {
//			str = it.next();
//			keyword = new Element("keyword");
//			root.addContent(keyword);
//			keyword.setText(str);
//		}
//
//		// 문서 객체 생성
//		Document doc = new Document();
//
//		doc.setRootElement(root);
//
//		XMLOutputter xo = new XMLOutputter();
//		Format f = xo.getFormat();
//		f.setEncoding("UTF-8");// 한글처리
//		f.setIndent("  ");// 들여쓰기
//		f.setLineSeparator("\r\n");// 개행처리
//		f.setTextMode(TextMode.TRIM);// 문자형식 줄바꿈 해제
//		xo.setFormat(f); // 설정을 xo객체에 초기화
//		try {
//			xo.output(doc, System.out);
//			xo.output(doc,
//					new FileOutputStream("WebContent\\shop\\suggest.xml"));
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} // 출력
//
//	}
}
