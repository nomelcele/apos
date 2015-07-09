package or.adress.mvc.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import or.adress.mvc.dao.SmangDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vo.MemVO;
import vo.SalesCheckVO;

@Transactional
@Service
public class ShopService {
	@Autowired
	private SmangDao smdao;
	
	public void sh_smangRegising(HttpServletRequest request,
	         HttpSession session){
		int shopnum = (int) session.getAttribute("shop_num");
	      System.out.println("세션의 샵넘 확인 : " + shopnum);
	      // int shopnum = Integer.parseInt(request.getParameter("fshopnum"));
	      int fmileage = Integer.parseInt(request.getParameter("fmileage"));
	      int cusnum = Integer.parseInt(request.getParameter("fcusnum"));
	      int s = Integer.parseInt(request.getParameter("fset"));
	      System.out.println("고객번호 : " + cusnum);
	      boolean chk = true;
	      for (int i = 1; i <= s; i++) {
	         String fcode = "fcode" + i;
	         String fcash = "fcash" + i;
	         String fmany = "fmany" + i;
	         String fsize = "fsize" + i;
	         int code = Integer.parseInt(request.getParameter(fcode));
	         int cash = Integer.parseInt(request.getParameter(fcash));
	         int many = Integer.parseInt(request.getParameter(fmany));
	         int size = Integer.parseInt(request.getParameter(fsize));
	         HashMap<String, Integer> map = new HashMap<String, Integer>();
	         map.put("code", code);
	         map.put("cash", cash);
	         map.put("many", many);
	         map.put("size", size);
	         map.put("fmileage", fmileage);
	         map.put("cusnum", cusnum);
	         map.put("shopnum", shopnum);
	         smdao.insertsell(map, chk);
	         smdao.editstock(map);
	         chk = false;
	      }
	      int mile = Integer.parseInt(request.getParameter("inmileage"));
	      HashMap<String, Integer> map = new HashMap<String, Integer>();
	      map.put("mile", mile);
	      map.put("cusnum", cusnum);
	      System.out.println(mile);
	      smdao.inmile(map);
	}
	
	// 매장- 판매등록 -교환 환불 -환불
	public void sh_refund(int sell_num){
		SalesCheckVO skvo = smdao.get_schkvo(sell_num);
		// 재고 테이블에서 재고 다시 올리
		smdao.get_refund(skvo);
		
		// 마일리지 테이블에서 마일리지 빼기
		int cach=skvo.getSell_cash();
		Double sell_mileage=cach*(Double) 0.01;
		int reres=(int) (skvo.getSell_mileage()-sell_mileage);
		System.out.println("re;"+reres);
		System.out.println("sell_mileage;"+skvo.getSell_mileage());
		MemVO vo = new MemVO();
		vo.setMem_mileage(reres);
		vo.setMem_num(skvo.getSell_memnum());
		smdao.sell_mileagechange(vo);
		
		// sell 삭제
		smdao.sell_del(sell_num);
		System.out.println(skvo.getSell_memnum());
	}
}
