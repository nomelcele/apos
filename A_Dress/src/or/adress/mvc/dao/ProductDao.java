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
	
	// 보류 / 물어볼 것
	// 완료 확인요망
	// 이거 해쉬맵 String하고 int가 섞여있어서
	// 일단 obJect로 해놨는데
	// 만약 오류나면 여기가 안되는 거임
	public void stockedit(String pamount, String pronum, String shopnum, String psize){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("pamount", pamount);
		map.put("pronum", pronum);
		map.put("shopnum", shopnum);
		map.put("psize", psize);
		
		ss.selectList("product.product_stockedit", map);
		
		
	}
	
	// product_insert
	// 완료 확인요망
	// 반환값이 리절트, 인자값이 파라미터
	public void insert(ProductVO vo) {
		ss.insert("product.product_insert", vo);
	}
	
	// 모르겠음 where pro_code=? 인데 파라미터가 많음..
	// 완료 확인요망
	public ProductVO getProduct(String code){
		
		return ss.selectOne("product.product_product", code);
		
	}
	
	// 보류 / 위에거랑 비슷 물어볼 것
	// 완료 확인요망
	// 상품 검색
	public List<ProductVO> getListProduct_bon(String pro_name){
		return ss.selectList("product.product_bon", pro_name);
	}
	//매장별 상품 검색
	public List<ProductVO> getListProduct(HashMap<String, String> map){
		return ss.selectList("product.listproduct",map);
		
	}
	
	//매장별 성별에 따라 다른 옷 출력
		public List<ProductVO> getListProductGender(HashMap<String, String> map) {
			return ss.selectList("product.listproductGender", map);
		}
	
	// 인자값 2개라서 일단 보류
	// 완료 확인요망
	public List<ProductVO> getListProduct_bon2(String code,String num){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("code", code);
		map.put("num", num);
		
		return ss.selectList("product.product_bon2", map);
	}
	
	//상품세일페이지에서 상품검색
	public List<ProductVO> getListProduct_bon3(int pro_code){
		return ss.selectList("product.product_bon3", pro_code);
	}
	//상품세일적용]
	public void acceptsalerate(SaleVO vo){
		ss.update("product.acceptsalerate", vo);
	}
	
	//신상품추가시 stock테이블에 재고0인 상태로 추가 위해 샵넘 목록뽑기!
	public List<Integer> getshop_numlist(){
		return ss.selectList("product.get_shopnumlist");
	}
	
	//신상품추가시 각매장들에 재고0상태로 insert
	public void setzerostock(HashMap<String, Integer> map){
		ss.insert("product.setzerostock", map);
	}
}
