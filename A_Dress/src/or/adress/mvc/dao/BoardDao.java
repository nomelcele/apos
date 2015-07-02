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
import vo.CommVO;

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
		ss.delete("notice.notice_delete", no);
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
}
