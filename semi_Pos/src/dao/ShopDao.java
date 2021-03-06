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
			// shop_num, shop_name, shop_tel, shop_adr,shop_map_x, shop_map_y
			// shop_date, shop_mail, shop_master, shop_img, shop_crnum, shop_bonnum
			// shop_id, shop_pwd
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
			pstmt.setInt(9, vo.getCrnum());
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
				vo.setKey_hotkey(rs.getInt("ket_hot"));
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
	public ArrayList<ShopHotkeyVO> checkhotcrnumname(int crnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShopHotkeyVO> list = new ArrayList<ShopHotkeyVO>();
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from hotkey where key_crnum=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, crnum);
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
	public boolean checkid(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean res= false;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shop where shop_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			String str="";
			
			while (rs.next()) {
				str = rs.getString("shop_id");
				if(str.equals(id)){
					res=true; //같을때 true 발생
				}
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
		return res;
	}
	public boolean checkMasteridpwd(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean res= false;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shop where shop_id=? and shop_pwd=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			res = rs.next(); // 있을때 true 없을때 false

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
		return res;
	}
	public boolean checkStaffidpwd(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean res= false;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from Staff where staff_id=? and staff_pwd=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			res = rs.next(); // 있을때 true 없을때 false

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
		return res;
	}
	public int getshopno(String id){
		Connection con= null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		int num=0;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shop where shop_id=? ");
			pstmt= con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				num =  rs.getInt("shop_num");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}
	// 매장명을 얻기위함
	public ArrayList<ShopVO> getshopname(String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		ArrayList<ShopVO> shop_info=new ArrayList<ShopVO>(); 
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shop where shop_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ShopVO vo = new ShopVO();
				vo.setName(rs.getString("shop_name"));
				vo.setMaster(rs.getString("shop_master"));
				shop_info.add(vo);
			}
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
		return shop_info;
	}
	
	// ID 찾기에서 쓰임
	public String findid(String name, String tel){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String res = "";
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select shop_id from shop where shop_master=? and shop_tel=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,name);
			pstmt.setString(2,tel);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				res=rs.getString("shop_id");
				System.out.println("=============shop_id====:"+res);
			}
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
		return res;
	}
	// PWD 찾기에서 쓰임
	public String findpwd(String name, String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String res = "";
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select shop_pwd from shop where shop_name=? and shop_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,name);
			pstmt.setString(2,id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				res=rs.getString("shop_pwd");
				System.out.println("=============shop_pwd====:"+res);
			}
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
		return res;
	}
	
	private int createHotkey(){
		int hotkey=(int)(Math.random()*666666)+111111;// 0~99까지
		return hotkey;
	}
	public ArrayList<ShopVO> getshopList(){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		ArrayList<ShopVO> shopList=new ArrayList<ShopVO>(); 
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select * from shop ");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()){
				ShopVO vo = new ShopVO();
				vo.setName(rs.getString("shop_name"));
				vo.setAdr(rs.getString("shop_adr"));
				vo.setNum(rs.getInt("shop_num"));
				vo.setMaster(rs.getString("shop_master"));
				vo.setTel(rs.getString("shop_tel"));
				vo.setMail(rs.getString("shop_mail"));
				vo.setImg(rs.getString("shop_img"));
				shopList.add(vo);
				System.out.println(rs.getString("shop_name"));
			}
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
		return shopList;
	}
}
