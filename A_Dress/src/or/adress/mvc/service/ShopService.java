package or.adress.mvc.service;

import java.util.HashMap;

import or.adress.mvc.dao.SmangDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ShopService {
	@Autowired
	private SmangDao smdao;
	
	public void sh_smangRegising(HashMap<String, Integer> map, boolean chk){
		smdao.insertsell(map, chk);
        smdao.editstock(map);
	}
}
