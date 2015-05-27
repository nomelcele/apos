package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.MyJndiContext;
import vo.SmangVO;

public class SmangDao {
	private static SmangDao dao;
	
	public static synchronized SmangDao getDao() {
		if (dao == null) {
			dao = new SmangDao();
		}
		return dao;
	}
	public void insertsell()
	public ArrayList<SmangVO> getListProduct2(int seq){
		System.out.println(seq);
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SmangVO> list = new ArrayList<SmangVO>();
		StringBuffer sql = new StringBuffer();
		sql.append("select p.pro_code, p.pro_name, p.pro_price, s.sto_size, sh.shop_name, s.sto_amount from product p, stock s, shop sh where p.pro_num = s.sto_pronum and sh.shop_num=sto_shopnum and p.pro_num = ? and sh.shop_num = 1");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SmangVO v = new  SmangVO();
				v.setPro_code(rs.getString("pro_code"));
				v.setPro_name(rs.getString("pro_name"));
				v.setPro_price(rs.getInt("pro_price"));
				v.setSto_size(rs.getInt("sto_size"));
				v.setShop_name(rs.getString("shop_name"));
				v.setSto_amount(rs.getInt("sto_amount"));
				
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return list;
		}
	
	public ArrayList<SmangVO> getListProduct(String check) {
		System.out.println(check);
		int seq = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SmangVO> list = new ArrayList<SmangVO>();
		StringBuffer sql = new StringBuffer();
		sql.append("select pro_num from product where pro_code = ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, check.trim());
			rs = pstmt.executeQuery();
			while(rs.next()){
				seq = rs.getInt("pro_num");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		list = getListProduct2(seq);
		return list;
	}
}
