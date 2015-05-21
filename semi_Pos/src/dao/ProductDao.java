package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.BoardVO;
import conn.MyJndiContext;

public class ProductDao {
	private static ProductDao dao;
	public static synchronized ProductDao getDao() {
		if (dao == null)
			dao = new ProductDao();
		return dao;
	}
	public void insert(BoardVO vo) {

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			System.out.println(con);
			
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board values(");
			sql.append("board_seq.nextVal,?,'����',?,sysdate,?,0,0001)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,vo.getTitle());
		//	pstmt.setString(2,"����");  //�ۼ��� ���ļ���
			pstmt.setString(2,vo.getContent());
			pstmt.setString(3,vo.getPath()); //���ϸ�
		//	pstmt.setInt(6, 1); //�������ȣ
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
				e.printStackTrace();
			}
		}

	}
}
