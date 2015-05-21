package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import conn.MyJndiContext;

public class BonsaDao {
	private static BonsaDao dao;

	public static synchronized BonsaDao getDao() {
		if (dao == null)
			dao = new BonsaDao();
		return dao;
	}
	public boolean chkid(HashMap<String, String> map) throws SQLException{
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_id from bonsa where bon_id like=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,map.get("bon_id"));
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if  (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return rs.next();
	}
	
}
