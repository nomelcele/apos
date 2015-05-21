package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import conn.MyJndiContext;

public class ShDao {
	private static ShDao dao;

	public static synchronized ShDao getDao() {
		if (dao == null) {
			dao = new ShDao();
		}
		return dao;
	}

	public ArrayList<String> suggestList(String check, String type) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		type = type.toLowerCase();// 소문자로 세팅
		String str = "";
		System.out.println("check :" + check + "type :" + type);
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			if (type.equals("name")) {
				sql.append("select mem_name from member where mem_name like ?");
				pstmt = con.prepareStatement(sql.toString());
				String str3 = check+"%";
				pstmt.setString(1, str3);
				rs = pstmt.executeQuery();
				if (rs == null) {
					list.add("선택한 글자가 없어요");
				}
				while (rs.next()) {
					list.add(rs.getString("mem_name"));
				}

			} else if(type.equals("num")) {
				System.out.println("test23");
				sql.append("select mem_tel from member where mem_tel like ?");
				pstmt = con.prepareStatement(sql.toString());
				String sqllike ="%"+check+"%";
				System.out.println(sqllike);
				pstmt.setString(1, sqllike);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					str = rs.getString("mem_tel");
					System.out.println(str);
					list.add(str);
				}
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
			sql.append("insert into member values(");
			sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("name"));
			pstmt.setString(2, map.get("tel"));
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(3, post.toString());
			pstmt.setString(4, map.get("adr3"));
			pstmt.setString(5, map.get("adr4"));
			// 나중에 세션처리 구현 하면 넣어야되 회원이 가입한 상점번호
			// pstmt.setString(6,map.get("shopnum"));
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

}
