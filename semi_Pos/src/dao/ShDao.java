package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;



import vo.MemVO;
import vo.ProductVO;
import conn.MyJndiContext;

public class ShDao {
	private static ShDao dao;

	public static synchronized ShDao getDao() {
		if (dao == null) {
			dao = new ShDao();
		}
		return dao;
	}
	// 맴버 정보를 디비에서 빼옴 검색한 내용에 맞게  
	public ArrayList<MemVO> getListMember(Map<String, Integer> map,String name) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MemVO> list = new ArrayList<MemVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select * from (select rownum r_num, a.* from (");
		sql.append("select * from member where mem_name=? or mem_tel=?"
				+ "order by mem_NUM desc) a");
		sql.append(") where r_num between ? and ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, name);
			pstmt.setString(2, name);
			pstmt.setInt(3, map.get("begin"));
			pstmt.setInt(4, map.get("end"));
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemVO v= new MemVO();
				v.setMem_num(rs.getInt("mem_num"));
				v.setMem_name(rs.getString("mem_name"));
				v.setMem_tel(rs.getString("mem_tel"));
				v.setMem_addr(rs.getString("mem_addr")+rs.getString("mem_deaddr"));
				v.setMem_date(rs.getString("mem_date"));
				v.setMem_email(rs.getString("mem_email"));
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
	
	public ArrayList<ProductVO> getListProduct(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select *from(select p.*,s.sto_amount pro_amount from product p,stock s  ");
		sql.append("where p.pro_num=s.sto_pronum  and (p.pro_num like '?' or p.pro_code like '?')and s.sto_shopnum='1')");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			String sqlcheck= check+"%";
			pstmt.setString(1, sqlcheck);
			pstmt.setString(2, sqlcheck);
			//pstmt.setString(3, shopnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductVO v= new ProductVO();
				v.setPro_num(rs.getInt("pro_num"));
				v.setPro_name(rs.getString("pro_name"));
				v.setPro_price(rs.getInt("pro_price"));
				v.setPro_code(rs.getString("pro_name"));
				v.setPro_size(rs.getInt("pro_name"));
				v.setPro_amount(rs.getInt("pro_amount"));
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
	//상품에 대한 정보를 suggest로 
	public ArrayList<String> suggestListProduct(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
	
		System.out.println("check :" + check );
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select pro_name, pro_code from product where pro_name like ? or pro_code like ?");
			pstmt = con.prepareStatement(sql.toString());
			String str3 = "%"+check +"%";
			pstmt.setString(1, str3);
			pstmt.setString(2, str3);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("pro_name"));
				list.add(rs.getString("pro_code"));
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
	//suggest고객 정보를 이름과 전화번호로 뽑는다~
	public ArrayList<String> suggestListMember(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		

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
			StringBuffer tel = new StringBuffer();
			sql.append("insert into member values(");
			sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("name"));
			tel.append(map.get("tel1")).append("-").append(map.get("tel2")).append("-").append(map.get("tel3"));
			pstmt.setString(2, tel.toString());
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(3, post.toString());
			pstmt.setString(4, map.get("adr3"));
			pstmt.setString(5, map.get("adr4"));
			// 나중에 세션처리 구현 하면 넣어야되 회원이 가입한 상점번호
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

}
