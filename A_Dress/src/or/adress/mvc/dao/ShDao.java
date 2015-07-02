package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.MemVO;
import vo.ProductVO;
import vo.ShopVO;
import vo.SmangVO;

@Repository
public class ShDao {
	@Autowired
	private SqlSessionTemplate ss;

	// 물어볼 것..
	// 하긴했는데 완벽한지 모르겠음
	// 완료 확인 요망 (sh_suggestlist)
	public List<String> getListSuggestShop(String key) {

		return ss.selectList("sh.sh_suggestlist", key);

	}

	
	// 상품에 대한 정보를 suggest로
	// 물어볼 것
	// 완료 확인요망
	public List<String> suggestListProduct(String check) {
		return ss.selectList("sh.sh_suggestlist", check);
	}

	// suggest고객 정보를 이름과 전화번호로 뽑는다~
	// 물어볼 것 뭔지 모르겠음
	// 완료 망했다 꼬임
	public List<String> suggestListMember(String check) {
		return ss.selectList("sh.sh_suggestlistmember", check);
	}

	// 물어 볼 것
	
	// 물어볼 것
	// 완료
	

	
	// 물어 볼 것
	// 완료


}
