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
		if (dao == null)
			dao = new SalesCheckDao();
		return dao;
	}

	public ArrayList<SalesCheckVO> getList(String shopname, String startdate,String enddate) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
		System.out.println("map" + shopname);
		System.out.println("gender" +startdate);

		StringBuffer sql = new StringBuffer();
		sql.append("select  to_char(sell_date,'yyyy-MM') sedate,count(*) cnt ");
		sql.append(" ,sum(s.sell_cash) sell_cash, sh.SHOP_NAME sell_shopname ");
		sql.append(" from sell s, shop sh  where s.SELL_SHOPNUM = sh.shop_num and sh.SHOP_NAME like ?  ");
		sql.append(" and( sell_date >= to_date(?,'yyyy-MM-dd')  and sell_Date <= to_date(?,'yyyy-MM-dd')) ");
		sql.append("  group by to_char(sell_date,'yyyy-MM') ,sh.SHOP_NAME ORDER BY 1");

		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, shopname);
			pstmt.setString(2, startdate);
			pstmt.setString(3, enddate);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SalesCheckVO v = new SalesCheckVO();
				System.out.println("test34"+rs.getInt("sell_cash"));
				v.setDate(rs.getString("sedate"));
				v.setSell_card(rs.getInt("sell_cash"));
				v.setSell_shopname(rs.getString("sell_shopname"));
				v.setCount(rs.getInt("cnt"));
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
