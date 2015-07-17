package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ShopVO;
import vo.StaffVO;

@Repository
public class StaffDao { // ���濬
	@Autowired
	private SqlSessionTemplate ss;
		// staff�� ������ list�� ��ȯ �մϴ�. staff, shop �Ѵ� ���ϴ�.
	public List<StaffVO> getList(String shop_name) {
		List<StaffVO>list = ss.selectList("staff.get_list",shop_name);
		System.out.println("�鰨");
		return list;
	}

  public List<StaffVO>gettotalList(){
	  List<StaffVO>list=ss.selectList("staff.get_totallist");
	  return list;
  }
	

	public void insertMem(HashMap<String, String> map) {
		ss.insert("staff.insert_mem",map);
	}
	// ID ã�⿡�� ���� - ��ȣ
		// staff name,tel���� id(snamd)ã��
		public String findid(StaffVO vo){
			String res = ss.selectOne("staff.find_id",vo);
			return res;
		}
		// PWD ã�⿡�� ����
		// staff_name,id�� staff_pwdã��
		public String findpwd(StaffVO vo){
			String res = ss.selectOne("staff.find_pwd",vo);
			return res;
		}
		// ������� ���
		public List<StaffVO> get_list(int shop_num){
			return ss.selectList("staff.get_stafflist", shop_num);
			
		}
		// ��� ajxa
		public int get_login(int staff_num){
			return ss.selectOne("staff.get_login",staff_num);
		}
		// ��� �μ�Ʈ
		public void insert_login(int work_staffnum){
			ss.insert("staff.insert_login", work_staffnum);
		}
		// ��� �ð� �������� ����Ʈ
		public String get_logintime(int work_staffnum){
			return ss.selectOne("staff.get_logintime", work_staffnum);
		}
		//��� ��� �ð� ������Ʈ
		public void set_logout(int work_staffnum){
			 ss.update("staff.set_logout",work_staffnum);
		}
		// �޿� ���
		public List<StaffVO> get_pay(HashMap<String, String> map){
			return ss.selectList("staff.get_pay",map);
		}
}
