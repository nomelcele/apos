package or.adress.mvc.service;

import java.util.HashMap;
import java.util.List;

import or.adress.mvc.dao.BonsaDao;
import or.adress.mvc.dao.LoginDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vo.BonsaVO;
import vo.JoinVO;
import vo.ProductVO;
import vo.ShopVO;

@Transactional
@Service
public class LoginService {
	@Autowired
	ShopDao sdao;
	@Autowired
	ProductDao pdao;
	@Autowired
	BonsaDao bdao;
	@Autowired
	LoginDao ldao;
	
	//������Ƽ��?
			private Integer[] chk11 = {95,100,105};
			private Integer[] chk12 = {28,30,32};
			private Integer[] chk21 = {75,80,85};
			private Integer[] chk22 = {25,27,29};
			private Integer[] chk33 = {6,7,8};
			
	public void shopjoinservice(ShopVO vo, JoinVO jvo){
		ldao.grade(jvo);
		ldao.login(jvo);
		sdao.shopjoin(vo);
		int shop_num = pdao.get_last_shopnum();
			List<String> pro_num_list = pdao.get_productnumlist();
			for(String pro_code : pro_num_list){
				int chk = Integer.parseInt(pro_code.substring(3, 5));
				
				Integer[] temp={0};
				switch(chk){
				case 11 : 
					temp = chk11;
					break;
				case 12 : 
					temp = chk12;
					break;
				case 21 : 
					temp = chk21;
					break;
				case 22 : 
					temp = chk22;
					break;
				case 33 : 
					temp = chk33;
					break;
				}
				for(int sto_size : temp){
					HashMap<String, Integer> map = new HashMap<String, Integer>();
					map.put("sto_shopnum", shop_num);
					map.put("sto_size", sto_size);
					map.put("sto_pronum", Integer.parseInt(pro_code));//ǥ��
					pdao.setzerostock(map);
				}
				
			}
				
			
		}
	
	public void bonjoinservice(BonsaVO vo, JoinVO jvo){
		bdao.sawonjoin(vo);
		ldao.login(jvo);
		ldao.grade(jvo);
		
	}
	
}

