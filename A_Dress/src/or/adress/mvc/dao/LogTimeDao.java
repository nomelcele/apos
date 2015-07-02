package or.adress.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LogTimeDao { // 서경연
	@Autowired
	private SqlSessionTemplate ss;
	
	// loginout_seq.nextval , sysdate , null ,#{u_id}를 insert 한다.
	public void logintime(String id){
		// 로그인 시간
		// id를 이용하여 bon_num을 구한다
		ss.insert("logtime.login_time",id);
	}
	// loginout_seq.nextval , null , sysdate , #{u_id}를 insert 한다.
	public void logouttime(String id){
		ss.insert("logtime.logout_time",id);
	}
	
}
