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
	
	// 경찬이오빠가 한다고 넘어가래요.
	// 인자값 3개 / 물어볼 것 
	public List<SalesCheckVO> getProductList(String procode,
			String startdate, String enddate) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("procode", procode);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_productlist", map);
		

	}
	
	// 인자값 2개 물어볼 것
	// 완료 확인요망 
	// 판매현
	public List<SalesCheckVO> getonday(String shop_num,String date_ps){
		System.out.println("ㅗㅗㅗㅗ"+shop_num+date_ps);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("date_ps", date_ps);
		
		return ss.selectList("salescheck.salescheck_onday", map);

	}
		
	
	// 인자값 3개.. 물어볼 것
	// 완료 확인요망
	public List<SalesCheckVO> getList(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_list", map);

	}
	
	// join이라서 물어봐야 할듯...
	// 완료 확인요망
	public List<SalesCheckVO> searchSellnum(int sellnum){
		
		return ss.selectList("ssalescheck.salescheck_searchSellnum", sellnum);

	}
}
