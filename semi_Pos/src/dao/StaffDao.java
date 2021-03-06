package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import vo.ShopVO;
import vo.StaffVO;
import conn.MyJndiContext;

public class StaffDao {
	private static StaffDao dao;

	public static synchronized StaffDao getDao() {
		if (dao == null) {
			dao = new StaffDao();
		}
		return dao;
	}

	public ArrayList<StaffVO> getList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StaffVO> list = new ArrayList<StaffVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select a.staff_num,a.staff_name,a.staff_tel,s.shop_name,a.STAFF_POSITION from staff a , shop s where s.shop_num=a.staff_shopnum");

		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());

			rs = pstmt.executeQuery();
			while (rs.next()) {
				StaffVO v = new StaffVO();
				v.setShop_snum(rs.getInt("staff_num"));
				v.setShop_sname(rs.getString("staff_name"));
				v.setShop_sposition(rs.getString("STAFF_POSITION"));
				v.setShop_stel(rs.getString("staff_tel"));
				v.setShop_name(rs.getString("shop_name"));

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
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public ArrayList<StaffVO> suggestList(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StaffVO> list = new ArrayList<StaffVO>();

		String str = "";
		System.out.println("check :" + check);
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			if(check == null || check.equals("")){
				System.out.println("없음");
				sql.append("select st.staff_num stn, sh.shop_name shn, st.staff_tel stt, st.staff_position stp, st.staff_name stna from staff st,shop sh where st.staff_shopnum=sh.shop_num");
				pstmt = con.prepareStatement(sql.toString());
				rs = pstmt.executeQuery();
			}else{
				System.out.println("있음");
				sql.append("select st.staff_num stn, sh.shop_name shn, st.staff_tel stt, st.staff_position stp, st.staff_name stna from staff st,shop sh where st.staff_shopnum=sh.shop_num and sh.shop_name like ? or staff_tel like ?");
				pstmt = con.prepareStatement(sql.toString());
				String str3 = "%" + check + "%";
				pstmt.setString(1, str3);
				pstmt.setString(2, str3);
				rs = pstmt.executeQuery();

			}
			while (rs.next()) {
				StaffVO v = new StaffVO();
				v.setShop_snum(Integer.parseInt(rs.getString("stn")));
				v.setShop_name(rs.getString("shn"));
				v.setShop_sposition(rs.getString("stp"));
				v.setShop_sname(rs.getString("stna"));
				v.setShop_stel(rs.getString("stt"));
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
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return list;
	}

	public void insertMem(HashMap<String, String> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("확인");
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			StringBuffer post = new StringBuffer();
			StringBuffer tel = new StringBuffer();
			sql.append("insert into member values(");
			sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("name"));
			tel.append(map.get("tel1")).append("-").append(map.get("tel2"))
					.append("-").append(map.get("tel3"));
			pstmt.setString(2, tel.toString());
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(3, post.toString());
			pstmt.setString(4, map.get("adr3"));
			pstmt.setString(5, map.get("adr4"));
			// 나중에세션처리구현하면넣어야되회원이가입한상점번호
			// pstmt.setString(6,map.get("shopnum"));
			pstmt.setString(6, map.get("email"));
			pstmt.executeUpdate();
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	public void getListName(HashMap<String, String> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StaffVO> list = new ArrayList<StaffVO>();

	}
		// ID 찾기에서 쓰임 - 광호
		public String findid(String name, String tel){
			Connection con= null;
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			String res = "";
			try {
				con=MyJndiContext.getDs();
				StringBuffer sql = new StringBuffer();
				sql.append("select staff_id from shop where staff_name=? and staff_tel=?");
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setString(1,name);
				pstmt.setString(2,tel);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					res=rs.getString("staff_id");
					System.out.println("=============staff_id====:"+res);
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
				sql.append("select staff_pwd from staff where staff_name=? and staff_id=?");
				pstmt = con.prepareStatement(sql.toString());
				pstmt.setString(1,name);
				pstmt.setString(2,id);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					res=rs.getString("staff_pwd");
					System.out.println("=============staff_pwd====:"+res);
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
		
}
