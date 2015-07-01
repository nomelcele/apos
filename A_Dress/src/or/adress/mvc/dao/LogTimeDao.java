package or.adress.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LogTimeDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void logintime(String id){
		// �α��� �ð�
		// id�� �̿��Ͽ� bon_num�� ���Ѵ�
		ss.insert("logtime.login_time",id);
	}
	
	public void logouttime(String id){
		ss.insert("logtime.logout_time",id);
	}
	
}
