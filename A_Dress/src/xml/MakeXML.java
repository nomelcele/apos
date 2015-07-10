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
		 * tname, names from team; application names = ��浿-���϶�-��ȿ��
		 * split,StrintTokenizer �߷��� ��ġ�� �� �־�� .. <kosta97> <team>
		 * <tname>������</tname> <name1>��浿</name1> <name2>���϶�</name2>
		 * <name3>��ȿ��</name3> </team> </kosta97>
		 */
		// Database�� ���� �о� ���� ���� -> xml������ ������ �۾�
		// root �����

		String str = "";
		Iterator<String> it = list.iterator();

		Element root = new Element("root");
		Element keyword = null;

		// ���� ��ġ

		while (it.hasNext()) {
			str = it.next();
			keyword = new Element("keyword");
			root.addContent(keyword);
			keyword.setText(str);
		}

		// ���� ��ü ����
		Document doc = new Document();

		doc.setRootElement(root);

		XMLOutputter xo = new XMLOutputter();
		Format f = xo.getFormat();
		f.setEncoding("UTF-8");// �ѱ�ó��
		f.setIndent("  ");// �鿩����
		f.setLineSeparator("\r\n");// ����ó��
		f.setTextMode(TextMode.TRIM);// �������� �ٹٲ� ����
		xo.setFormat(f); // ������ xo��ü�� �ʱ�ȭ
		try {
			xo.output(doc, System.out);
			xo.output(doc,
					new FileOutputStream("C:\\kosta97\\spring\\workspace\\A_Dress\\src\\suggest\\suggest.xml"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // ���

	}

//	public static void main(String[] args) {
//		/*
//		 * --- select tname, name1,name2,name3,name4,name5 from t ex) select
//		 * tname, names from team; application names = ��浿-���϶�-��ȿ��
//		 * split,StrintTokenizer �߷��� ��ġ�� �� �־�� .. <kosta97> <team>
//		 * <tname>������</tname> <name1>��浿</name1> <name2>���϶�</name2>
//		 * <name3>��ȿ��</name3> </team> </kosta97>
//		 */
//		// Database�� ���� �о� ���� ���� -> xml������ ������ �۾�
//		// root �����
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
//		// ���� ��ġ
//
//		while (it.hasNext()) {
//			str = it.next();
//			keyword = new Element("keyword");
//			root.addContent(keyword);
//			keyword.setText(str);
//		}
//
//		// ���� ��ü ����
//		Document doc = new Document();
//
//		doc.setRootElement(root);
//
//		XMLOutputter xo = new XMLOutputter();
//		Format f = xo.getFormat();
//		f.setEncoding("UTF-8");// �ѱ�ó��
//		f.setIndent("  ");// �鿩����
//		f.setLineSeparator("\r\n");// ����ó��
//		f.setTextMode(TextMode.TRIM);// �������� �ٹٲ� ����
//		xo.setFormat(f); // ������ xo��ü�� �ʱ�ȭ
//		try {
//			xo.output(doc, System.out);
//			xo.output(doc,
//					new FileOutputStream("WebContent\\shop\\suggest.xml"));
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} // ���
//
//	}
}
