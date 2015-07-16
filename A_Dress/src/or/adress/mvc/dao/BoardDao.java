package or.adress.mvc.dao;
//semi용
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.CalendarVO;
import vo.CommVO;
import vo.SaleVO;

@Repository
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate ss;
	

	public void delete(int no){
		ss.delete("notice.notice_delete", no);
	}
	public void insert(BoardVO vo) {
		
		ss.insert("notice.notice_in", vo);

	}

	public List<BoardVO> getList(Map<String, Integer> map) {
		
		List<BoardVO> list = ss.selectList("notice.notice_list", map);
		
		return list;
	}

	public int getTotalCount() {
		
		return ss.selectOne("notice.notice_totalcount");
	}
	public BoardVO getDetail(int no){
		return ss.selectOne("notice.notice_detail", no);
	}
	
	//commt
	public void deleteComm(int no){
		ss.delete("notice.notice_deletecomm", no);
	}
	public void insertComm(HashMap<String, String> map) {
		ss.insert("notice.notice_insertcomm", map);
	}
	// 댓글을 검색하기 위해서는 필수 사항
	// code값에 detail의 no값을 보내야 하고
	// 페이지 처리에 필요한 begin, end를 보내야 한다.
	public List<CommVO> getCommList(Map<String, Integer> map){
		return ss.selectList("notice.notice_getcommlist", map);
	}
	//Comm의 Total
	//인자값 즉 detail의 pk 값을 기준으로,
	//detail페이지에 소속된 댓글의 전체 카운트값을 가져온다.
	public int getTotalCommCount(int no){
		return ss.selectOne("notice.notice_gettotalcommcount", no);
	}
	//할인적용시 게시판글쓰기
	public void insertSale(SaleVO vo){
		ss.insert("notice.notice_saleinsert", vo);
	}
	//할인취소시 게시판글머리 수정
	public void cancelSale(CalendarVO vo){
		String bo_sub = "<종료>"+vo.getCalen_start()+"~"+vo.getCalen_end();
		HashMap<String , String> map = new HashMap();
		map.put("calen_num", String.valueOf( vo.getCalen_num()));
		map.put("bo_sub", bo_sub);
		ss.update("notice.notice_salecancel",map);
	}
	
}
