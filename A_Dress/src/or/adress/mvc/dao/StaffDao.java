package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ShopVO;
import vo.StaffVO;

@Repository
public class StaffDao { // 서경연
	@Autowired
	private SqlSessionTemplate ss;
		// staff의 정보를 list로 반환 합니다. staff, shop 둘다 씁니다.
	public List<StaffVO> getList(String shop_name) {
		List<StaffVO>list = ss.selectList("staff.get_list",shop_name);
		System.out.println("들감");
		return list;
	}

  public List<StaffVO>gettotalList(){
	  List<StaffVO>list=ss.selectList("staff.get_totallist");
	  return list;
  }
	

	public void insertMem(HashMap<String, String> map) {
		ss.insert("staff.insert_mem",map);
	}
	// ID 찾기에서 쓰임 - 광호
		// staff name,tel으로 id(snamd)찾기
		public String findid(StaffVO vo){
			String res = ss.selectOne("staff.find_id",vo);
			return res;
		}
		// PWD 찾기에서 쓰임
		// staff_name,id로 staff_pwd찾기
		public String findpwd(StaffVO vo){
			String res = ss.selectOne("staff.find_pwd",vo);
			return res;
		}
		// 정산관리 급여
		public List<StaffVO> get_list(int shop_num){
			return ss.selectList("staff.get_stafflist", shop_num);
			
		}
		
}
