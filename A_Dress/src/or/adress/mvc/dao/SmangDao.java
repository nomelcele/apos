package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;







import vo.SmangVO;

@Repository
public class SmangDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void editstock(HashMap<String, Integer> map){
		int camount = ss.selectOne("smang.smang_editstock", map);
		int many = map.get("many");
		map.put("amount", camount-many);
		ss.update("smang.smang_editstock", map);	
	}
	
	public void inmile(HashMap<String, Integer> map){
		ss.update("smang.smang_inmile", map);
	}
	
	public void insertsell(HashMap<String, Integer> map, boolean chk){
		int next = 0;
		next = ss.selectOne("smang.smang_getmax");
		if(chk){next++;}
		map.put("next", next);
		ss.insert("smang.smang_sellin", map);
	}
	public List<SmangVO> getListProduct(HashMap<String, String> map){
		return ss.selectList("smang.smang_getlistproduct", map);
		}
	
}
