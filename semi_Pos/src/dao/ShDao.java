package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;

import conn.MyJndiContext;



public class ShDao {
private static ShDao dao;

public static synchronized ShDao getDao() {
	if(dao ==null){
		dao = new ShDao();
	}
	return dao;
}

public void insertMem(HashMap<String, String> map){
	Connection con = null;
	PreparedStatement pstmt=null;
	System.out.println("Ȯ��");
	try {
		con=MyJndiContext.getDs();
		StringBuffer sql =new StringBuffer();
		StringBuffer post= new StringBuffer();
		sql.append("insert into member values(");
		sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1)");
		pstmt=con.prepareStatement(sql.toString());
		pstmt.setString(1, map.get("name"));
		pstmt.setString(2, map.get("tel"));
		post.append(map.get("adr1")).append("-")
		.append(map.get("adr2"));
		pstmt.setString(3, post.toString());
		pstmt.setString(4, map.get("adr3"));
		pstmt.setString(5,map.get("adr4"));
		//���߿� ����ó�� ���� �ϸ� �־�ߵ� ȸ���� ������ ������ȣ
		//pstmt.setString(6,map.get("shopnum"));
		pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally{
		try {
			if(pstmt!=null)
			pstmt.close();
			if(con !=null)
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}



}
