package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MyJndiContext;

public class LogTimeDao {
	private static LogTimeDao dao;

	public static LogTimeDao getDao() {
		if(dao ==null) dao= new LogTimeDao();
		return dao;
	}
	
	public void logintime(String id){
		// 로그인 시간
		// id를 이용하여 bon_num을 구한다
		int bon_num = BonsaDao.getDao().getbonnum(id);
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into loginout values(");
			sql.append(" loginout_seq.nextval , sysdate , null , ? )");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, bon_num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void logouttime(String id){
		// 로그아웃시간
		// id를 이용하여 bon_num을 구한다
		System.out.println("logout id "+id);
		int bon_num = BonsaDao.getDao().getbonnum(id);
		System.out.println("logout bon_num "+bon_num);
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into loginout values(");
			sql.append(" loginout_seq.nextval , null , sysdate , ? )");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, bon_num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
