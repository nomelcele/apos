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
public class BonsaDao { // ���濬 : ���� Dao �Դϴ�. 
	@Autowired
	private SqlSessionTemplate ss;
	
	// bon_id,pwd�� bon_in ã��
	public String logincheck(HashMap<String, String> map){
		// �α��ν� id/pwd Ȯ��
		String res = ss.selectOne("bonsa.login_check", map);
		return res;
	}
	
	// bon_id�� bon_idã�� ���̵��ֳ� �˻�?
	public boolean chkid(String id){
		boolean res = ss.selectOne("bonsa.chk_id",id);
		return res;
	}
	
	// bon_name, tel �� bon_idã��
	public String findid(HashMap<String, String> map){
		String res = ss.selectOne("bonsa.find_id",map);
		return res;
	}
	// bon_name,id�� bon_pwd ã��
	public String findpwd(HashMap<String, String> map){
		String res = ss.selectOne("bonsa.find_pwd",map);
		return res;
	}
	// bon_id�� bon_num ã��
	public int getbonnum(String id){
		int bon_num=ss.selectOne("bonsa.get_bonnum", id);
		return bon_num;
	}
	// bonsaVO�� insert�Ѵ�.
	public void sawonjoin(BonsaVO vo){
		// ���� ��� ȸ������
		ss.insert("bonsa.sawon_join",vo);
	}
	// Session���� ���� ������ �������� �̸� �� �̱�
	// bon_id�� bon_name ã��
	public String getbonname(String id){
		String bon_name= ss.selectOne("bonsa.get_bonname",id);
		return bon_name;
	}
	
	// shop_num�� shopvo�� ��ȯ.
	public ShopVO detailmap(int shop_num){
	      ShopVO vo =ss.selectOne("bonsa.detail_map",shop_num);
	      return vo;
	   }
	
	// hotkey ���οϷ��� ����
	// 07.11 ����
	public void deletehotkey(ShopHotkeyVO v){
		ss.update("bonsa.deletehotkey", v);
	   }
	
	// ���� ���Ϸ�(discount)
	public List<ProductVO> discount() {
		List<ProductVO> list = ss.selectList("bonsa_discount");
		return list;
	}
	// bonsa_fullcalendar ���� �����ϱ�
	public void insertfullcalendar(CalendarVO vo){
		System.out.println(vo.getCalen_start());
	      ss.insert("bonsa.insert_calendar",vo);
	}
	// bonsa_fullcalendar ���� ��������
	public List<CalendarVO> getlistfullcalendar(){
		List<CalendarVO> list = ss.selectList("bonsa.getlist_calendar");
		
		return list;
	}
	
	//��������� calendar�� ����
	public void insert_salecalendar(SaleVO vo){
		ss.insert("bonsa.insert_salecalendar", vo);
	}
	
	// �޷� ���� ������
	public void delete_calendar(int calen_num){
		ss.delete("bonsa.delete_calendar", calen_num);
	}
	// �޷� ������ �ʿ��� procode �̾Ƴ���
	public String getprocode_calendar(int calen_num){
		String procode = ss.selectOne("bonsa.getprocode_calendar", calen_num);
		return procode;
	}
}
