package or.adress.mvc.dao;

import java.sql.Connection;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ChaVO;

@Repository
public class ChatDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void insertChat(ChaVO v){
		ss.insert("chat.insert_chat",v);
	}
	
	public List<ChaVO> getList(){
		List<ChaVO> list = ss.selectList("chat.get_list");
		return list;
	}
	
}
