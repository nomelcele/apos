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
//	public List<SalesCheckVO> getProductList(String procode,
//			String startdate, String enddate) {
//		HashMap<String, String> map = new HashMap<String, String>();
//		map.put("procode", procode);
//		map.put("startdate", startdate);
//		map.put("enddate", enddate);
//		
//		return ss.selectList("salescheck.salescheck_productlist", map);
//		
//		
//		
//		
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
//		System.out.println("map" + procode);
//		System.out.println("gender" + startdate);
//
//		StringBuffer sql = new StringBuffer();
//		sql.append("select  to_char(sell_date,'yyyy-MM') sedate,count(*) cnt ");
//		sql.append(" ,sum(s.sell_cash) sell_cash,p.PRO_NAME sell_proname");
//		sql.append(" from sell s, shop sh,product p  where s.SELL_pronum = p.pro_code and s.SELL_PRONUM = ?  ");
//		sql.append("  and( sell_date >= to_date(?,'yyyy-MM-dd')  and sell_Date <= to_date(?,'yyyy-MM-dd')) ");
//		sql.append("  group by to_char(sell_date,'yyyy-MM') ,p.PRO_NAME ORDER BY 1");
//
//		try {
//			pstmt.setString(1, procode);
//			pstmt.setString(2, startdate);
//			pstmt.setString(3, enddate);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				SalesCheckVO v = new SalesCheckVO();
//				System.out.println("test34" + rs.getInt("sell_cash"));
//				v.setDate(rs.getString("sedate"));
//				v.setSell_cash(rs.getInt("sell_cash"));
//				v.setSell_proname(rs.getString("sell_proname"));
//				v.setCount(rs.getInt("cnt"));
//				list.add(v);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return list;
//
//	}
	
	// 인자값 2개 물어볼 것
	// 완료 확인요망 
	// 판매현
	public List<SalesCheckVO> getonday(String shop_num,String date_ps){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_num", shop_num);
		map.put("date_ps", date_ps);
		
		return ss.selectList("salescheck.salescheck_onday", map);

	}
		
	
	// 인자값 3개.. 물어볼 것
	// 완료 확인요망
	public List<SalesCheckVO> getList(String shopname, String startdate,
			String enddate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shopname", shopname);
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
