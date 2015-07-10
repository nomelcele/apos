package or.adress.mvc.dao;


import java.util.HashMap;
import java.util.List;




import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ProductVO;
import vo.SaleVO;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	// ���� / ��� ��
	// �Ϸ� Ȯ�ο��
	// �̰� �ؽ��� String�ϰ� int�� �����־
	// �ϴ� obJect�� �س��µ�
	// ���� �������� ���Ⱑ �ȵǴ� ����
	public void stockedit(String pamount, String pronum, String shopnum, String psize){
		
		HashMap<String, String> map = new HashMap<String, String>();
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
	// ��ǰ �˻�
	public List<ProductVO> getListProduct_bon(String pro_name){
		return ss.selectList("product.product_bon", pro_name);
	}
	//���庰 ��ǰ �˻�
	public List<ProductVO> getListProduct(HashMap<String, String> map){
		return ss.selectList("product.listproduct",map);
		
	}
	
	//���庰 ������ ���� �ٸ� �� ���
		public List<ProductVO> getListProductGender(HashMap<String, String> map) {
			return ss.selectList("product.listproductGender", map);
		}
	
	// ���ڰ� 2���� �ϴ� ����
	// �Ϸ� Ȯ�ο��
	public List<ProductVO> getListProduct_bon2(String code,String num){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("code", code);
		map.put("num", num);
		
		return ss.selectList("product.product_bon2", map);
	}
	
	//��ǰ�������������� ��ǰ�˻�
	public List<ProductVO> getListProduct_bon3(int pro_code){
		return ss.selectList("product.product_bon3", pro_code);
	}
	//��ǰ��������]
	public void acceptsalerate(SaleVO vo){
		ss.update("product.acceptsalerate", vo);
	}
	
	//�Ż�ǰ�߰��� stock���̺� ���0�� ���·� �߰� ���� ���� ��ϻ̱�!
	public List<Integer> getshop_numlist(){
		return ss.selectList("product.get_shopnumlist");
	}
	
	//�Ż�ǰ�߰��� ������鿡 ���0���·� insert
	public void setzerostock(HashMap<String, Integer> map){
		ss.insert("product.setzerostock", map);
	}
}
