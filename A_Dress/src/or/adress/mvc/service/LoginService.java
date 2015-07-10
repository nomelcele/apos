package or.adress.mvc.service;

import java.util.List;

import or.adress.mvc.dao.ShopDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vo.ShopVO;

@Transactional
@Service
public class LoginService {
	@Autowired
	ShopDao shdao;
	
	public void shopjoinservice(String id){
		
	}
}
