package adapter;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ChatDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.SalesCheckDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StockDao;

//������� �������̽�
public interface AdapterInter {
	//��Ʈ�ѷ����� ���������� ����ϴ� DAO�� �����ϴ� �߻�޼���
	public BoardDao BDAOreturn();
	public ShopDao SHDAOreturn();
	public ProductDao PDAOreturn();
	public StockDao STDAOreturn();
	public ChatDao CHDAOreturn();
	public SalesCheckDao SKDAOreturn();
}
