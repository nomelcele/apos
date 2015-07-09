package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;








import vo.SalesCheckVO;
import vo.SmangVO;

@Repository
public class SmangDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void editstock(HashMap<String, Integer> map){
		int camount = ss.selectOne("smang.smang_editstock", map);
		int many = map.get("many");
		map.put("amount", camount-many);
		ss.update("smang.smang_editstock2", map);	
	}
	
	public void inmile(HashMap<String, Integer> map){
		ss.update("smang.smang_inmile", map);
	}
	
	public void insertsell(HashMap<String, Integer> map, boolean chk){
		int next = 0;
		next = ss.selectOne("smang.smang_getmax");
		if(chk){next++;}
		map.put("next", next);
		ss.insert("smang.smang_sellin", map);
	}
	public List<SmangVO> getListProduct(HashMap<String, String> map){
		return ss.selectList("smang.smang_getlistproduct", map);
		}
	
	// 환불교환 테이블불러오기
	public List<SalesCheckVO> get_selltable(int sell_sell){
		return ss.selectList("smang.get_selltable",sell_sell);
	}
	
	// 환불 vo가져오기
	public SalesCheckVO get_schkvo(int sell_num){
		return ss.selectOne("smang.get_vo", sell_num);
	}
	// 환불 refund
	/*
	 * update stock set STO_AMOUNT=sto_amount+#{sell_many} 
	where sto_shopnum=#{sell_shopnum} and sto_pronum= #{sell_pronum} 
	and sto_size =#{sell_size}
	 * */
	public void get_refund(SalesCheckVO vo){
		ss.update("smang.get_refund", vo);
	}
	public void sell_del(int sell_num){
		ss.delete("smang.sell_del", sell_num);
	}
}
