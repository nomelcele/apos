package or.adress.mvc.dao;
//semi��
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
	// ����� �˻��ϱ� ���ؼ��� �ʼ� ����
	// code���� detail�� no���� ������ �ϰ�
	// ������ ó���� �ʿ��� begin, end�� ������ �Ѵ�.
	public List<CommVO> getCommList(Map<String, Integer> map){
		return ss.selectList("notice.notice_getcommlist", map);
	}
	//Comm�� Total
	//���ڰ� �� detail�� pk ���� ��������,
	//detail�������� �Ҽӵ� ����� ��ü ī��Ʈ���� �����´�.
	public int getTotalCommCount(int no){
		return ss.selectOne("notice.notice_gettotalcommcount", no);
	}
	//��������� �Խ��Ǳ۾���
	public void insertSale(SaleVO vo){
		ss.insert("notice.notice_saleinsert", vo);
	}
	//������ҽ� �Խ��Ǳ۸Ӹ� ����
	public void cancelSale(CalendarVO vo){
		String bo_sub = "<����>"+vo.getCalen_start()+"~"+vo.getCalen_end();
		HashMap<String , String> map = new HashMap();
		map.put("calen_num", String.valueOf( vo.getCalen_num()));
		map.put("bo_sub", bo_sub);
		ss.update("notice.notice_salecancel",map);
	}
	
}
