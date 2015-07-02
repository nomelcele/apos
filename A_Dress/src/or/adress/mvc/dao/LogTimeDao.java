package or.adress.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LogTimeDao { // ���濬
	@Autowired
	private SqlSessionTemplate ss;
	
	// loginout_seq.nextval , sysdate , null ,#{u_id}�� insert �Ѵ�.
	public void logintime(String id){
		// �α��� �ð�
		// id�� �̿��Ͽ� bon_num�� ���Ѵ�
		ss.insert("logtime.login_time",id);
	}
	// loginout_seq.nextval , null , sysdate , #{u_id}�� insert �Ѵ�.
	public void logouttime(String id){
		ss.insert("logtime.logout_time",id);
	}
	
}
