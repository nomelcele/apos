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
	
	// ���� ���Ϸ�(discount)
	public List<ProductVO> discount() {
		List<ProductVO> list = ss.selectList("bonsa_discount");
		return list;
	}
	
}
