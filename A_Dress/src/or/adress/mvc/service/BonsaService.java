package or.adress.mvc.service;

import java.util.HashMap;
import java.util.List;

import or.adress.mvc.dao.ProductDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vo.ProductVO;

@Transactional
@Service
public class BonsaService {
	@Autowired
	private ProductDao pdao;
	
	//프로퍼티지?
	private Integer[] chk11 = {95,100,105};
	private Integer[] chk12 = {28,30,32};
	private Integer[] chk21 = {75,80,85};
	private Integer[] chk22 = {25,27,29};
	private Integer[] chk33 = {6,7,8};
	
	
	public void bon_productAdding(ProductVO vo){
		pdao.insert(vo);
		String pro_code = vo.getPro_code();
		int chk = Integer.parseInt(pro_code.substring(3, 5));
		
		Integer[] temp={0};
//		if(chk == 11){
//			temp = chk11;
//		}else if(chk == 12){
//			temp = chk12;
//		}else if(chk == 21){
//			temp = chk21;
//		}
		switch(chk){
		case 11 : temp = chk11;
		case 12 : temp = chk12;
		case 21 : temp = chk21;
		case 22 : temp = chk22;
		case 33 : temp = chk33;
		}
		List<Integer> list = pdao.getshop_numlist();
		for(int shop_num : list){
			for(int sto_size : temp){
				HashMap<String, Integer> map = new HashMap<String, Integer>();
				map.put("sto_shopnum", shop_num);
				map.put("sto_size", sto_size);
				map.put("sto_pronum", vo.getPro_num());
				pdao.setzerostock(map);
			}
		}
	}
}
