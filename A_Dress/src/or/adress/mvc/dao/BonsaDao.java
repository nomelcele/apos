 package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BonsaVO;
import vo.ProductVO;
import vo.ShopVO;

@Repository
public class BonsaDao { // 서경연 : 본사 Dao 입니다. 
	@Autowired
	private SqlSessionTemplate ss;
	
	// bon_id,pwd로 bon_in 찾기
	public String logincheck(HashMap<String, String> map){
		// 로그인시 id/pwd 확인
		String res = ss.selectOne("bonsa.login_check", map);
		return res;
	}
	
	// bon_id로 bon_id찾기 아이디있나 검사?
	public boolean chkid(String id){
		boolean res = ss.selectOne("bonsa.chk_id",id);
		return res;
	}
	
	// bon_name, tel 로 bon_id찾기
	public String findid(HashMap<String, String> map){
		String res = ss.selectOne("bonsa.find_id",map);
		return res;
	}
	// bon_name,id로 bon_pwd 찾기
	public String findpwd(HashMap<String, String> map){
		String res = ss.selectOne("bonsa.find_pwd",map);
		return res;
	}
	// bon_id로 bon_num 찾기
	public int getbonnum(String id){
		int bon_num=ss.selectOne("bonsa.get_bonnum", id);
		return bon_num;
	}
	// bonsaVO를 insert한다.
	public void sawonjoin(BonsaVO vo){
		// 본사 사원 회원가입
		ss.insert("bonsa.sawon_join",vo);
	}
	// Session에서 쓰일 매장명과 매장주인 이름 을 뽑기
	// bon_id로 bon_name 찾기
	public String getbonname(String id){
		String bon_name= ss.selectOne("bonsa.get_bonname",id);
		return bon_name;
	}
	
	// shop_num로 shopvo를 반환.
	public ShopVO detailmap(int shop_num){
	      ShopVO vo =ss.selectOne("bonsa.detail_map",shop_num);
	      return vo;
	   }
	
	// 본사 세일률(discount)
	public List<ProductVO> discount() {
		List<ProductVO> list = ss.selectList("bonsa_discount");
		return list;
	}
	
}
