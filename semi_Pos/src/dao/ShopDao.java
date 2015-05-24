package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.ShopVO;
import conn.MyJndiContext;

public class ShopDao {
	private static ShopDao dao;

	public static synchronized ShopDao getDao() {
		if(dao == null) dao= new ShopDao(); 
		return dao;
	}
	
	public void shopjoin(){
		Connection con= null;
		PreparedStatement pstmt = null;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql= new StringBuffer();
			ShopVO vo = new ShopVO();
			//num, name, tel, adr, map_x, map_y, date, mail, master, img, crnum, bon_num, id, pwd
			sql.append("insert into shop values(");
			sql.append("shop_seq.nextval,?,?,?,?,?,sysdate,?,?,?,?,1,?,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getTel());
			pstmt.setString(3, vo.getAdr());
			pstmt.setFloat(4, vo.getMap_x());
			pstmt.setFloat(5, vo.getMap_y());
			pstmt.setString(6, vo.getMail());
			pstmt.setString(7, vo.getMaster());
			pstmt.setString(8, vo.getImg());
			pstmt.setString(9, vo.getCrnum());
			pstmt.setString(10, vo.getId());
			pstmt.setString(11, vo.getPwd());
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
