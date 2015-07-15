package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vo.MemVO;

@Controller
public class MemberDao {
@Autowired
private SqlSessionTemplate ss;

public List<MemVO> presearchmem(HashMap<String, String> map){
	System.out.println("memberdao¿‘¥œ¥Ÿ.");
	return ss.selectList("member.mem_presearch",map);
}

}
