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

	// ��� ��..
	// �ϱ��ߴµ� �Ϻ����� �𸣰���
	// �Ϸ� Ȯ�� ��� (sh_suggestlist)
	public List<String> getListSuggestShop(String key) {

		return ss.selectList("sh.sh_suggestlist", key);

	}

	
	// ��ǰ�� ���� ������ suggest��
	// ��� ��
	// �Ϸ� Ȯ�ο��
	public List<String> suggestListProduct(String check) {
		return ss.selectList("sh.sh_suggestlist", check);
	}

	// suggest�� ������ �̸��� ��ȭ��ȣ�� �̴´�~
	// ��� �� ���� �𸣰���
	// �Ϸ� ���ߴ� ����
	public List<String> suggestListMember(String check) {
		return ss.selectList("sh.sh_suggestlistmember", check);
	}

	// ���� �� ��
	
	// ��� ��
	// �Ϸ�
	

	
	// ���� �� ��
	// �Ϸ�


}
