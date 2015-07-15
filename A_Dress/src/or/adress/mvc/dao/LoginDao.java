package or.adress.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.JoinVO;

@Repository
public class LoginDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void login(JoinVO jvo){
		ss.insert("join.login", jvo);
	}
	public void grade(JoinVO jvo){
		ss.insert("join.grade", jvo);
	}
}
