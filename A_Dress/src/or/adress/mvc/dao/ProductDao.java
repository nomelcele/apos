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
	
	// 보류 / 물어볼 것
	// 완료 확인요망
	// 이거 해쉬맵 String하고 int가 섞여있어서
	// 일단 obJect로 해놨는데
	// 만약 오류나면 여기가 안되는 거임
	public void stockedit(int pamount, String pronum, int shopnum, int psize){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
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
	public List<ProductVO> getListProduct_bon(String name){
		
		return ss.selectList("product.product_bon", name);
	}
	
	// 인자값 2개라서 일단 보류
	// 완료 확인요망
	public List<ProductVO> getListProduct_bon2(String code,String num){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("code", code);
		map.put("num", num);
		
		return ss.selectList("product.product_bon2", map);
	}
}
