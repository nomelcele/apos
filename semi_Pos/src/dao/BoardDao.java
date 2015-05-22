package dao;
//semi용
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

	public void insert(BoardVO vo) {

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			System.out.println(con);
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board values(");
			sql.append("board_seq.nextVal,?,'본사',?,sysdate,?,0,0001)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1,vo.getTitle());
		//	pstmt.setString(2,"본사");  //작성자 추후수정
			pstmt.setString(2,vo.getContent());
			pstmt.setString(3,vo.getPath()); //파일명
		//	pstmt.setInt(6, 1); //본사원번호
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
		
		sql.append("select bo_num, bo_sub, bo_writer, bo_cont, to_char(bo_date, 'yyyy-mm-dd'), ");
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
				v.setTitle("bo_sub");
				v.setWriter(rs.getString("bo_writer"));
				v.setContent(rs.getString("bo_cont"));
				v.setRegdate(rs.getString("bo_date"));
				
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
	public void insertComm(HashMap<String, String> map) {
		System.out.println("확인");
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into comm values(");
			sql.append("comm_seq.nextVal,?,?,?,?,?,sysdate)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, "김길동");
			pstmt.setString(2, map.get("targetIcon"));
			pstmt.setInt(3, Integer.parseInt(map.get("code")));
			pstmt.setString(4, map.get("comm"));
			pstmt.setString(5, map.get("reip"));
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
	// 댓글을 검색하기 위해서는 필수 사항
	// code값에 detail의 no값을 보내야 하고
	// 페이지 처리에 필요한 begin, end를 보내야 한다.
	public ArrayList<CommVO> getCommList(Map<String, Integer> map){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<CommVO> list = new ArrayList<CommVO>();
		StringBuffer sql = new StringBuffer();
		sql.append("select * from (select rownum r_num, a.* from (");
		sql.append("select * from comm where code=? order by no desc) a");
		sql.append(") where r_num between ? and ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, map.get("no"));
			pstmt.setInt(2, map.get("begin"));
			pstmt.setInt(3, map.get("end"));
			rs = pstmt.executeQuery();
			while(rs.next()){
				//BoardVO v = new BoardVO();
				CommVO v = new CommVO();
				v.setNo(rs.getInt("no"));
				v.setWriter(rs.getString("writer"));
				v.setImgicon(rs.getString("imgicon"));
				v.setRedate(rs.getString("regdate"));
				v.setComm(rs.getString("comm"));
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
	//Comm의 Total
	//인자값 즉 detail의 pk 값을 기준으로,
	//detail페이지에 소속된 댓글의 전체 카운트값을 가져온다.
	public int getTotalCommCount(int no){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append("select count(*) cnt from comm where code=?");
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
