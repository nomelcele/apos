package or.adress.mvc.dao;

import java.util.HashMap;
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
		System.out.println("�鰨?");
	}
	public List<StockVO> Stocklist() {
		return ss.selectList("stock.Stocklist");
	}
	public void Stockreq2(StockVO vo){
		ss.update("stock.Stockyn",vo);
		System.out.println("������Ʈ!");
	}
	public List<StockVO> sh_productRequestState(int shop_num){
		return ss.selectList("stock.SSlist", shop_num);
	}
	
}
	// ���������� ����Ÿ�� �޼����(�Ķ����Ÿ�� �Ķ�����̸�)

