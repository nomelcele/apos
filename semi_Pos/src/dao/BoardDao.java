package dao;
//semi��
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import conn.MyJndiContext;
import vo.BoardVO;
import vo.CommVO;

public class BoardDao {

	private static BoardDao dao;

	public static synchronized BoardDao getDao() {
		if (dao == null)
			dao = new BoardDao();
		return dao;
	}
	public void delete(int no){
		System.out.println("deleteüũ");
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("delete board where bo_num = ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
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
	public void insert(BoardVO vo) {

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board values(");
			sql.append("board_seq.nextVal,?,?,?,sysdate,?,0,0001)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,vo.getTitle());
			pstmt.setString(2,vo.getWriter()); 
			pstmt.setString(3,vo.getContent());
			pstmt.setString(4,vo.getPath()); //���ϸ�
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

	public ArrayList<BoardVO> getList(Map<String, Integer> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select * from (select rownum r_num, a.* from (");
		sql.append("select * from board order by BO_NUM desc) a");
		sql.append(") where r_num between ? and ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, map.get("begin"));
			pstmt.setInt(2, map.get("end"));
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardVO v = new BoardVO();
				v.setTitle(rs.getString("BO_SUB"));
				v.setNo(rs.getInt("BO_NUM"));
				v.setWriter(rs.getString("BO_WRITER"));
				v.setRegdate(rs.getString("BO_DATE"));
				v.setHit(rs.getInt("BO_HIT"));
				v.setPath(rs.getString("BO_IMG"));
				v.setGroupno(rs.getInt("BO_BONNUM"));
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public int getTotalCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append("select count(*) cnt from board");
		int res = 0;
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
		
			rs = pstmt.executeQuery();
			if(rs.next()){
				res = rs.getInt("cnt");	
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return res;
	}
	public BoardVO getDetail(int no){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		
		sql.append("select bo_num, bo_sub, bo_writer, bo_cont, bo_date, ");
		sql.append("bo_img, bo_hit, bo_bonnum ");
		sql.append("from board where bo_num=?");
		BoardVO v = new BoardVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				v.setNo(rs.getInt("bo_num"));
				v.setHit(rs.getInt("bo_hit"));
				v.setTitle(rs.getString("bo_sub"));
				v.setWriter(rs.getString("bo_writer"));
				v.setContent(rs.getString("bo_cont"));
				v.setRegdate(rs.getString("bo_date"));
				v.setPath("..\\upload\\"+rs.getString("bo_img"));
				System.out.println(v.getRegdate());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				
				if  (rs != null) rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return v;
	}
	
	//commt
	public void deleteComm(int no){
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("delete comm where comm_num = ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
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
	public void insertComm(HashMap<String, String> map) {
		System.out.println("Ȯ��");
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into comm values(");
			sql.append("comm_seq.nextVal,?,?,?,sysdate)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, Integer.parseInt(map.get("no")));
			pstmt.setString(2, map.get("writer"));
			pstmt.setString(3, map.get("comm"));
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
	// ����� �˻��ϱ� ���ؼ��� �ʼ� ����
	// code���� detail�� no���� ������ �ϰ�
	// ������ ó���� �ʿ��� begin, end�� ������ �Ѵ�.
	public ArrayList<CommVO> getCommList(Map<String, Integer> map){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<CommVO> list = new ArrayList<CommVO>();
		StringBuffer sql = new StringBuffer();
		sql.append("select * from (select rownum r_num, a.* from (");
		sql.append("select * from comm where comm_bonum=? order by comm_num desc) a");
		sql.append(") where r_num between ? and ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, map.get("no"));
			pstmt.setInt(2, map.get("begin"));
			pstmt.setInt(3, map.get("end"));
			rs = pstmt.executeQuery();
			System.out.println("Ȯ��");
			while(rs.next()){
				CommVO v = new CommVO();
				v.setNo(rs.getInt("comm_num"));
				v.setBo_num(rs.getInt("comm_bonum"));
				v.setWriter(rs.getString("comm_writer"));
				v.setRedate(rs.getString("comm_date"));
				v.setComm(rs.getString("comm_cont"));
				System.out.println(rs.getString("comm_cont"));
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	//Comm�� Total
	//���ڰ� �� detail�� pk ���� ��������,
	//detail�������� �Ҽӵ� ����� ��ü ī��Ʈ���� �����´�.
	public int getTotalCommCount(int no){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append("select count(*) cnt from comm where comm_bonum=?");
		int res = 0;
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				res = rs.getInt("cnt");
				
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return res;
	}
}
