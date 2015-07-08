package or.adress.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.StockVO;

@Repository
public class StockDao {
	@Autowired
	private SqlSessionTemplate ss;

	public void Stockreq(StockVO vo) {
		ss.insert("stock.Stockreq", vo);
		System.out.println("들감?");
	}
	public List<StockVO> Stocklist() {
		return ss.selectList("stock.Stocklist");
	}
	// 접근제한자 리턴타입 메서드명(파라미터타입 파라미터이름)
}
