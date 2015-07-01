package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BonsaVO;
import vo.ShopVO;
import conn.MyJndiContext;

@Repository
public class BonsaDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	private static BonsaDao dao;

	public static synchronized BonsaDao getDao() {
		if (dao == null)
			dao = new BonsaDao();
		return dao;
	}
	public boolean logincheck(String id, String pwd){
		// 로그인시 id/pwd 확인
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		boolean res = false;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_id from bonsa where bon_id=? and bon_pwd=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs= pstmt.executeQuery();
			
			res = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	public boolean chkid(String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		boolean res = false;
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_id from bonsa where bon_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			res = rs.next();
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
	public String findid(String name, String tel){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String res = "";
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_id from bonsa where bon_name=? and bon_tel=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,name);
			pstmt.setString(2,tel);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				res=rs.getString("bon_id");
				System.out.println("=============bon_id====:"+res);
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
	public String findpwd(String name, String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String res = "";
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_pwd from bonsa where bon_name=? and bon_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,name);
			pstmt.setString(2,id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				res=rs.getString("bon_pwd");
				System.out.println("=============bon_pwd====:"+res);
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
	public int getbonnum(String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		int bon_num=0; 
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_num from bonsa where bon_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				bon_num = rs.getInt("bon_num");
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
		return bon_num;
	}
	public void sawonjoin(BonsaVO vo){
		// 본사 사원 회원가입
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		// bon_num, bon_name, bon_id, bon_pwd, bon_job, bon_tel, bon_date
		try {
			conn= MyJndiContext.getDs();
			StringBuffer sql= new StringBuffer();
			sql.append("insert into bonsa values(");
			sql.append(" bonsa_seq.nextval,?,?,?,'일반',?,sysdate)");
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getBon_name());
			pstmt.setString(2, vo.getBon_id());
			pstmt.setString(3, vo.getBon_pwd());
			pstmt.setString(4, vo.getBon_tel());
			rs = pstmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// Session에서 쓰일 매장명과 매장주인 이름 을 뽑기
	public String getbonname(String id){
		Connection con= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String bon_name=""; 
		try {
			con=MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select bon_name from bonsa where bon_id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				bon_name = rs.getString("bon_name");
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
		return bon_name;
	}
	
	
	public ShopVO detailmap(int shop_num){
	      Connection con= null;
	      PreparedStatement pstmt=null;
	      ResultSet rs = null;
	      ShopVO vo =null;

	      try {
	         con=MyJndiContext.getDs();
	         StringBuffer sql = new StringBuffer();
	         sql.append("select * from shop where shop_num=?");
	         pstmt = con.prepareStatement(sql.toString());
	         pstmt.setInt(1,shop_num);
	         rs = pstmt.executeQuery();
	         while(rs.next()){
	            vo = new ShopVO();
	            vo.setAdr(rs.getString("shop_adr"));
	            vo.setMap_x(rs.getFloat("shop_map_x"));
	            vo.setMap_y(rs.getFloat("shop_map_y"));
	            vo.setName(rs.getString("shop_name"));
	            vo.setMaster(rs.getString("shop_master"));
	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return vo;
	   }
	
}
