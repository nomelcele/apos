 package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BonsaVO;
import vo.CalendarVO;
import vo.ProductVO;
import vo.SaleVO;
import vo.ShopHotkeyVO;
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
	
	// hotkey 승인완료후 삭제
	// 07.11 수정
	public void deletehotkey(ShopHotkeyVO v){
		ss.update("bonsa.deletehotkey", v);
	   }
	
	// 본사 세일률(discount)
	public List<ProductVO> discount() {
		List<ProductVO> list = ss.selectList("bonsa_discount");
		return list;
	}
	// bonsa_fullcalendar 정보 저장하기
	public void insertfullcalendar(CalendarVO vo){
		System.out.println(vo.getCalen_start());
	      ss.insert("bonsa.insert_calendar",vo);
	}
	// bonsa_fullcalendar 정보 가져오기
	public List<CalendarVO> getlistfullcalendar(){
		List<CalendarVO> list = ss.selectList("bonsa.getlist_calendar");
		
		return list;
	}
	
	//할인적용시 calendar에 적용
	public void insert_salecalendar(SaleVO vo){
		ss.insert("bonsa.insert_salecalendar", vo);
	}
	
	// 달력 일정 삭제시
	public void delete_calendar(int calen_num){
		ss.delete("bonsa.delete_calendar", calen_num);
	}
	// 달력 삭제시 필요한 procode 뽑아내기
	public String getprocode_calendar(int calen_num){
		String procode = ss.selectOne("bonsa.getprocode_calendar", calen_num);
		return procode;
	}
}
