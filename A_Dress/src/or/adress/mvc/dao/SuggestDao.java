package or.adress.mvc.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vo.MemVO;

@Controller
public class SuggestDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public ArrayList<String> getMember(String key){
		List<MemVO> memlist =ss.selectList("suggest.member", key);
		Iterator<MemVO> it = memlist.iterator();
		ArrayList<String> list = new ArrayList<String>();
		while (it.hasNext()) {
			MemVO memVO = it.next();
			list.add(memVO.getMem_name());
			list.add(memVO.getMem_tel());			
		}
		return list;
		
	}
}
