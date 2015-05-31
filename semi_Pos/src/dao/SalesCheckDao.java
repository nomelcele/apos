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

	public ArrayList<SalesCheckVO> getProductList(String procode,
			String startdate, String enddate) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
		System.out.println("map" + procode);
		System.out.println("gender" + startdate);

		StringBuffer sql = new StringBuffer();
		sql.append("select  to_char(sell_date,'yyyy-MM') sedate,count(*) cnt ");
		sql.append(" ,sum(s.sell_cash) sell_cash,p.PRO_NAME sell_proname");
		sql.append(" from sell s, shop sh,product p  where s.SELL_pronum = p.pro_code and s.SELL_PRONUM = ?  ");
		sql.append("  and( sell_date >= to_date(?,'yyyy-MM-dd')  and sell_Date <= to_date(?,'yyyy-MM-dd')) ");
		sql.append("  group by to_char(sell_date,'yyyy-MM') ,p.PRO_NAME ORDER BY 1");

		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, procode);
			pstmt.setString(2, startdate);
			pstmt.setString(3, enddate);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SalesCheckVO v = new SalesCheckVO();
				System.out.println("test34" + rs.getInt("sell_cash"));
				v.setDate(rs.getString("sedate"));
				v.setSell_cash(rs.getInt("sell_cash"));
				v.setSell_proname(rs.getString("sell_proname"));
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
	public ArrayList<SalesCheckVO> getonday(String shopnum,String day){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
		System.out.println("map" + shopnum);
		System.out.println("gender" +day);

		StringBuffer sql = new StringBuffer();
		sql.append("select sell_pronum ,sell_cash, sell_memnum, to_char(sell_date,'yyyy_MM-dd-hh-MI') sedate,sell_many");
		sql.append(" from sell where sell_shopnum=? and sell_date = to_date(?,'yy-MM-dd')");

		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, shopnum);
			pstmt.setString(2, day);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SalesCheckVO v = new SalesCheckVO();
				System.out.println("test34" + rs.getInt("sell_cash"));
				v.setDate(rs.getString("sedate"));
				v.setSell_cash(rs.getInt("sell_cash"));
				v.setSell_many(rs.getInt("sell_many"));
				v.setSell_pronum(rs.getInt("sell_pronum"));
				v.setSell_memnum(rs.getInt("sell_memnum"));
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
		
	

	public ArrayList<SalesCheckVO> getList(String shopname, String startdate,
			String enddate) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SalesCheckVO> list = new ArrayList<SalesCheckVO>();
		System.out.println("map" + shopname);
		System.out.println("gender" + startdate);

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
				System.out.println("test34" + rs.getInt("sell_cash"));
				v.setDate(rs.getString("sedate"));
				v.setSell_cash(rs.getInt("sell_cash"));
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
