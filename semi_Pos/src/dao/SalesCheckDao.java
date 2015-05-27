package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import vo.BoardVO;
import vo.SalesCheckVO;
import conn.MyJndiContext;

public class SalesCheckDao {
	private static SalesCheckDao dao;


	public static synchronized SalesCheckDao getDao() {
		if(dao == null)
			dao = new SalesCheckDao();
		return dao;
	}
	public ArrayList<SalesCheckVO> getList(Map<String, String> map){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
		System.out.println("map"+map.get("startdate"));		
		StringBuffer sql = new StringBuffer();
		sql.append("select count(*),sum(s.sell_card) sell_card,sum(sell_cash) sell_cash from sell s, product p ");
		sql.append(" where (p.pro_code like ?) and s.SELL_PRONUM = p.pro_num ");
		sql.append(" and( sell_date >= to_date(?,'yyyy-MM-dd')  and sell_Date <= sysdate)");
		
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,map.get("gender"));
			
			pstmt.setString(2, map.get("startdate"));
			//pstmt.setString(3, enddate);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SalesCheckVO v = new SalesCheckVO();
				v.setSell_card(rs.getInt("sell_card"));
				v.setSell_cash(rs.getInt("sell_cash"));
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
		
		
	}

	
}
