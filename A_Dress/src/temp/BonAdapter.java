package temp;

import org.springframework.beans.factory.annotation.Autowired;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.ChatDao;
import or.adress.mvc.dao.MemberDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.SalesCheckDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.StockDao;

//본사컨트롤러에서 사용할 어댑터
public class BonAdapter implements AdapterInter{
	@Autowired
	private BoardDao bdao;
	@Autowired
	private ShopDao shdao;
	@Autowired
	private ProductDao pdao;
	@Autowired
	private StockDao stdao;
	@Autowired
	private BonsaDao bondao;
	@Autowired
	private ChatDao chdao;
	@Autowired
	private SalesCheckDao skdao;
	@Autowired
	private MemberDao memdao;
	
	@Override
	public BoardDao BDAOreturn() {
		// TODO Auto-generated method stub
		return bdao;
	}

	@Override
	public ShopDao SHDAOreturn() {
		// TODO Auto-generated method stub
		return shdao;
	}

	@Override
	public ProductDao PDAOreturn() {
		// TODO Auto-generated method stub
		return pdao;
	}

	@Override
	public StockDao STDAOreturn() {
		// TODO Auto-generated method stub
		return stdao;
	}

	public BonsaDao BONDAOreturn() {
		return bondao;
	}

	@Override
	public ChatDao CHDAOreturn() {
		// TODO Auto-generated method stub
		return chdao;
	}

	@Override
	public SalesCheckDao SKDAOreturn() {
		// TODO Auto-generated method stub
		return skdao;
	}
	
	public MemberDao MEMDAOreturn(){
		return memdao;
	}
	
	
	

}
