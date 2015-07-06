package or.adress.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ChaVO;

@Repository
public class ChatDao { // 서경연
	@Autowired
	private SqlSessionTemplate ss;
	
	// chavo를 insert한다.
	public void insertChat(ChaVO v){
		ss.insert("chat.insert_chat",v);
	}
	// shavo를 받아온다.
	public List<ChaVO> getList(){
		List<ChaVO> list = ss.selectList("chat.get_list");
		return list;
	}
	
}
