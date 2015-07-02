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
import conn.MyJndiContext;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	// 보류 / 물어볼 것
	public void stockedit(int pamount, String pronum, int shopnum, int psize){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("num", num);
		
		return ss.selectList("product.product_bon2", map);
		
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("update stock set sto_amount=? where sto_pronum=? and sto_shopnum=? and sto_size=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, pamount);
			pstmt.setString(2, pronum);
			pstmt.setInt(3, shopnum);
			pstmt.setInt(4, psize);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// product_insert
	// 완료 확인요망
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
