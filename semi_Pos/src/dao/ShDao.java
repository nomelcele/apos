package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import vo.BoardVO;
import vo.MemVO;
import conn.MyJndiContext;

public class ShDao {
	private static ShDao dao;

	public static synchronized ShDao getDao() {
		if (dao == null) {
			dao = new ShDao();
		}
		return dao;
	}
	public ArrayList<MemVO> getList(Map<String, Integer> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MemVO> list = new ArrayList<MemVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select * from (select rownum r_num, a.* from (");
		sql.append("select * from member order by mem_NUM desc) a");
		sql.append(") where r_num between ? and ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, map.get("begin"));
			pstmt.setInt(2, map.get("end"));
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemVO v= new MemVO();
				v.setMem_num(rs.getInt("mem_num"));
				v.setMem_name(rs.getString("mem_name"));
				v.setMem_tel(rs.getString("mem_tel"));
				v.setMem_addr(rs.getString("mem_addr"));
				v.setMem_date(rs.getString("mem_date"));
				//v.setMem_deaddr(rs.getString("mem_deaddr"));
				//v.setMem
//				BoardVO v = new BoardVO();
//				v.setTitle(rs.getString("BO_SUB"));
//				v.setNo(rs.getInt("BO_NUM"));
//				v.setWriter(rs.getString("BO_WRITER"));
//				v.setRegdate(rs.getString("BO_DATE"));
//				v.setHit(rs.getInt("BO_HIT"));
//				v.setPath(rs.getString("BO_IMG"));
//				v.setGroupno(rs.getInt("BO_BONNUM"));
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
				if(rs!=null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<String> suggestList(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		
		String str = "";
		System.out.println("check :" + check );
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select mem_name, mem_tel from member where mem_name like ? or mem_tel like ?");
			pstmt = con.prepareStatement(sql.toString());
			String str3 = "%"+check +"%";
			pstmt.setString(1, str3);
			pstmt.setString(2, str3);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("mem_name"));
				list.add(rs.getString("mem_tel"));
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
