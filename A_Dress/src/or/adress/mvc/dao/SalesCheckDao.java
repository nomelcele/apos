package or.adress.mvc.dao;


import java.util.HashMap;
import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SalesCheckVO;

@Repository
public class SalesCheckDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	// �����̿����� �Ѵٰ� �Ѿ����.
	// ���ڰ� 3�� / ��� �� 
	public List<SalesCheckVO> getProductList(String procode,
			String startdate, String enddate) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("procode", procode);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_productlist", map);
		

	}
	
	// ���ڰ� 2�� ��� ��
	// �Ϸ� Ȯ�ο�� 
	// �Ǹ���
	public List<SalesCheckVO> getonday(String shop_num,String date_ps){
		System.out.println("��ǰ �ѹ� ������ ǥ��:"+shop_num+date_ps);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("date_ps", date_ps);
		
		return ss.selectList("salescheck.salescheck_onday", map);

	}
		
	
	//������� - �Ⱓ�� ���� ����Ʈ 
	public List<SalesCheckVO> getList(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_list", map);

	}
	//������� - �Ⱓ�� ���� ����Ʈ ��Ʈ
	public List<SalesCheckVO> getListChart(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_chart", map);

	}
	
	// join�̶� ������� �ҵ�...
	// �Ϸ� Ȯ�ο��
	public List<SalesCheckVO> searchSellnum(int sellnum){
		
		return ss.selectList("ssalescheck.salescheck_searchSellnum", sellnum);

	}
}
