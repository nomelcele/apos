package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.ShopHotkeyVO;
import vo.ShopVO;
import conn.MyJndiContext;

public class ShopDao {
	private static ShopDao dao;

	public static synchronized ShopDao getDao() {
		if(dao == null) dao= new ShopDao(); 
		return dao;
	}
	
	public void shopjoin(ShopVO vo){
		Connection con= null;
		PreparedStatement pstmt = null;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql= new StringBuffer();
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
	
	public void shoprequesthotkey(ShopHotkeyVO vo ){
		Connection con= null;
		PreparedStatement pstmt = null;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql= new StringBuffer();
			int hotkey = createHotkey();
			// num, hotkey, mail, crnum
			System.out.println("여기는 HOTkey-DAO 입니다");
			System.out.println("NAME : "+vo.getKey_name());
			System.out.println("Hotkey : "+hotkey);
			System.out.println("Email : "+ vo.getKey_email());
			System.out.println("CRNUM : "+ vo.getKey_crnum());
			
			sql.append("insert into hotkey values(");
			sql.append("hotkey_seq.nextVal,?,?,?,?,sysdate)");
			pstmt= con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getKey_name());
			pstmt.setInt(2, hotkey);
			pstmt.setString(3, vo.getKey_email());
			pstmt.setInt(4, vo.getKey_crnum());
			pstmt.executeUpdate();
			
		}catch (SQLException e) {
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
	public ArrayList<ShopHotkeyVO> getListRequestShop() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShopHotkeyVO> list = new ArrayList<ShopHotkeyVO>();
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from hotkey");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ShopHotkeyVO vo= new ShopHotkeyVO();
				vo.setKey_num(rs.getInt("key_num"));
				vo.setKey_name(rs.getString("key_name"));
				vo.setKey_hotkey(rs.getInt("key_hot"));
				vo.setKey_email(rs.getString("key_mail"));
				vo.setKey_crnum(rs.getInt("key_crnum"));
				vo.setKey_date(rs.getString("key_date"));
				list.add(vo);	
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (con != null) con.close();
				if (rs != null) rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return list;
	}
	
	private int createHotkey(){
		int hotkey=(int)(Math.random()*666666)+111111;// 0~99까지
		return hotkey;
	}
}
