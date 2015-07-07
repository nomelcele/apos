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
		System.out.println("상품 넘버 데이터 표시:"+shop_num+date_ps);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("date_ps", date_ps);
		
		return ss.selectList("salescheck.salescheck_onday", map);

	}
		
	
	//정산관리 - 기간별 매출 리스트 
	public List<SalesCheckVO> getList(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_list", map);

	}
	//정산관리 - 기간별 매출 리스트 차트
	public List<SalesCheckVO> getListChart(String shop_num, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		
		return ss.selectList("salescheck.salescheck_chart", map);

	}
	
	// join이라서 물어봐야 할듯...
	// 완료 확인요망
	public List<SalesCheckVO> searchSellnum(int sellnum){
		
		return ss.selectList("ssalescheck.salescheck_searchSellnum", sellnum);

	}
}
