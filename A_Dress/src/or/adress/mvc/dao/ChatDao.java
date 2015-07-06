package or.adress.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ChaVO;

@Repository
public class ChatDao { // ���濬
	@Autowired
	private SqlSessionTemplate ss;
	
	// chavo�� insert�Ѵ�.
	public void insertChat(ChaVO v){
		ss.insert("chat.insert_chat",v);
	}
	// shavo�� �޾ƿ´�.
	public List<ChaVO> getList(){
		List<ChaVO> list = ss.selectList("chat.get_list");
		return list;
	}
	
}
