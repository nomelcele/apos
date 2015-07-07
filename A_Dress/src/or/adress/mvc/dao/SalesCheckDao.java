package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
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
		System.out.println("�ǤǤǤ�"+shop_num+date_ps);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("date_ps", date_ps);
		
		return ss.selectList("salescheck.salescheck_onday", map);

	}
		
	
	// ���ڰ� 3��.. ��� ��
	// �Ϸ� Ȯ�ο��
	public List<SalesCheckVO> getList(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_list", map);

	}
	
	// join�̶� ������� �ҵ�...
	// �Ϸ� Ȯ�ο��
	public List<SalesCheckVO> searchSellnum(int sellnum){
		
		return ss.selectList("ssalescheck.salescheck_searchSellnum", sellnum);

	}
}
