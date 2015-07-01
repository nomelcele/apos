package or.adress.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BonsaVO;
import vo.ShopVO;

@Repository
public class BonsaDao { // 본사 Dao 입니다. 
	@Autowired
	private SqlSessionTemplate ss;

	public boolean logincheck(BonsaVO vo){
		// 로그인시 id/pwd 확인
		boolean res = ss.selectOne("bonsa.login_check", vo);
		return res;
	}
	
	
	public boolean chkid(String id){
		boolean res = ss.selectOne("bonsa.chk_id",id);
		return res;
	}
	
	public String findid(BonsaVO vo){
		String res = ss.selectOne("bonsa.find_id",vo);
		return res;
	}
	
	public String findpwd(BonsaVO vo){
		String res = ss.selectOne("bonsa.find_pwd",vo);
		return res;
	}
	
	public int getbonnum(String id){
		int bon_num=ss.selectOne("bonsa.get_bonnum", id);
		return bon_num;
	}
	
	public void sawonjoin(BonsaVO vo){
		// 본사 사원 회원가입
		ss.insert("bonsa.sawon_join",vo);
	}
	// Session에서 쓰일 매장명과 매장주인 이름 을 뽑기
	public String getbonname(String id){
		String bon_name= ss.selectOne("bonsa.get_bonname",id);
		return bon_name;
	}
	
	
	public ShopVO detailmap(int shop_num){
	      ShopVO vo =ss.selectOne("bonsa.detail_map",shop_num);
	      return vo;
	   }
	
}
