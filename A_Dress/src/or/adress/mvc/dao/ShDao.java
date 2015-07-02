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
import conn.MyJndiContext;

@Repository
public class ShDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	
	// ��� ��..
	// �ϱ��ߴµ� �Ϻ����� �𸣰���
	// �Ϸ� Ȯ�� ��� (sh_suggestlist)
	public List<String> getListSuggestShop(String key){
		
		return ss.selectList("sh.sh_suggestlist", key);
		
	}
	// �ɹ� ������ ��񿡼� ���� �˻��� ���뿡 �°�  
	// ��� ��
	// �Ϸ� Ȯ�� ���
	public List<MemVO> getListMember(String name) {
		return ss.selectList("sh.sh_listmember", name);
	}
	
	// ���ڰ� �ΰ��ϱ� ���� �� ��
	// �Ϸ� Ȯ�ο��
	public List<SmangVO> getListProduct(String check,String shopnum) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("check", check);
		map.put("shopnum", shopnum);
		
		return ss.selectList("sh.sh_listproduct", map);
	}
	
	//��ǰ�� ���� ������ suggest�� 
	// ��� ��
	// �Ϸ� Ȯ�ο��
	public List<String> suggestListProduct(String check) {
		return ss.selectList("sh.sh_suggestlist", check);
	}
	
	//suggest�� ������ �̸��� ��ȭ��ȣ�� �̴´�~
	// ��� �� ���� �𸣰���
	// �Ϸ� ���ߴ� ����
	public List<String> suggestListMember(String check) {
		return ss.selectList("sh.sh_suggestlistmember", check);
	}

	
	// ���� �� ��
	public void insertMem(HashMap<String, String> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("Ȯ��");
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			StringBuffer post = new StringBuffer();
			StringBuffer tel = new StringBuffer();
			sql.append("insert into member values(");
			sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("name"));
			
			
			tel.append(map.get("tel1")).append("-").append(map.get("tel2")).append("-").append(map.get("tel3"));
			map.put("tel", tel.toString());
			
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			map.put("adr", map.toString());
			
			
			pstmt.setString(2, map.get("tel"));
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(3, post.toString());
			pstmt.setString(4, map.get("adr3"));
			pstmt.setString(5, map.get("adr4"));
			// ���߿� ����ó�� ���� �ϸ� �־�ߵ� ȸ���� ������ ������ȣ
			// pstmt.setString(6,map.get("shopnum"));
			pstmt.setString(6, map.get("email"));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
	
	// ��� ��
	// �Ϸ�
	public MemVO getDetail(int no){
		return ss.selectOne("sh.sh_detail", no);
	}
	
	// ����� / �򰥸���..
	public MemVO getfinish(HashMap<String, String> map){
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		StringBuffer post = new StringBuffer();
		StringBuffer tel = new StringBuffer();
		/*update member set 
mem_name='���濬��' ,
mem_tel='010-7664-0585',
mem_addr='��ž��',
mem_mileage='1000'
where mem_num='3';*/
		sql.append("update member set");
		sql.append(" mem_tel=?,mem_addr=?,mem_deaddr=?,mem_mileage=?");
		sql.append(" where mem_num=?");
		MemVO v = new MemVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			//tel.append(map.get("tel1")).append("-").append(map.get("tel2")).append("-").append(map.get("tel3"));
			pstmt.setString(1, map.get("memtel"));
			//post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(2, map.get("addr"));
			pstmt.setString(3, map.get("deaddr"));
			pstmt.setString(4, map.get("mileage"));
			pstmt.setString(5, map.get("num"));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return v;
	}
	
	// ���� �� ��
	// �Ϸ�
	public MemVO getsecede(int num){
		ss.delete("sh.sh_secede", num);
		MemVO v = new MemVO();
		
		return v;
	}


}
