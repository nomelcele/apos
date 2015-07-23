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
	public void Stockreq2(int req_num){
		ss.update("stock.Stockyn", req_num);
		System.out.println("������Ʈ!");
	}
	public void Stockreq3(int req_num){
		ss.update("stock.Stockyn2", req_num);
		System.out.println("������Ʈ!");
	}
	public List<StockVO> sh_productRequestState(int shop_num){
		return ss.selectList("stock.SSlist", shop_num);
	}
	
	//����û ���¸� yes�� �ٲٴ� ��
	public void Stockreqyes(int req_num){
		ss.update("stock.yes", req_num);
	}
	
	//����û ���¸� bo�� �ٲٴ� ��
		public void Stockreqno(int req_num){
			ss.update("stock.no", req_num);
		}
	
}
	// ���������� ����Ÿ�� �޼����(�Ķ����Ÿ�� �Ķ�����̸�)

