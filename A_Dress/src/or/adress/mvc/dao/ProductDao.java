package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Part;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.MemVO;
import vo.ProductVO;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	// ���� / ��� ��
	// �Ϸ� Ȯ�ο��
	// �̰� �ؽ��� String�ϰ� int�� �����־
	// �ϴ� obJect�� �س��µ�
	// ���� �������� ���Ⱑ �ȵǴ� ����
	public void stockedit(int pamount, String pronum, int shopnum, int psize){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pamount", pamount);
		map.put("pronum", pronum);
		map.put("shopnum", shopnum);
		map.put("psize", psize);
		
		ss.selectList("product.product_stockedit", map);
		
		
	}
	
	// product_insert
	// �Ϸ� Ȯ�ο��
	// ��ȯ���� ����Ʈ, ���ڰ��� �Ķ����
	public void insert(ProductVO vo) {
		ss.insert("product.product_insert", vo);
	}
	
	// �𸣰��� where pro_code=? �ε� �Ķ���Ͱ� ����..
	// �Ϸ� Ȯ�ο��
	public ProductVO getProduct(String code){
		
		return ss.selectOne("product.product_product", code);
		
	}
	
	// ���� / �����Ŷ� ��� ��� ��
	// �Ϸ� Ȯ�ο��
	public List<ProductVO> getListProduct_bon(String name){
		
		return ss.selectList("product.product_bon", name);
	}
	
	// ���ڰ� 2���� �ϴ� ����
	// �Ϸ� Ȯ�ο��
	public List<ProductVO> getListProduct_bon2(String code,String num){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("code", code);
		map.put("num", num);
		
		return ss.selectList("product.product_bon2", map);
	}
}
