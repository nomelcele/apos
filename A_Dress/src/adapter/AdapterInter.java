package adapter;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ChatDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.SalesCheckDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StockDao;

//어댑터의 인터페이스
public interface AdapterInter {
	//컨트롤러에서 공통적으로 사용하는 DAO를 리턴하는 추상메서드
	public BoardDao BDAOreturn();
	public ShopDao SHDAOreturn();
	public ProductDao PDAOreturn();
	public StockDao STDAOreturn();
	public ChatDao CHDAOreturn();
	public SalesCheckDao SKDAOreturn();
}
