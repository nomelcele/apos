package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemVO;
import vo.ProductVO;
import vo.ShopHotkeyVO;
import vo.ShopVO;
import vo.SmangVO;

@Repository
public class ShopDao {
	@Autowired
	private SqlSessionTemplate ss;

	public void shopjoin(ShopVO vo) {
		ss.insert("shop.shopjoin", vo);
	}

	public void shoprequesthotkey(ShopHotkeyVO vo) {

		int hotkey = createHotkey();
		// num, hotkey, mail, crnum
		vo.setKey_hotkey(hotkey);

		// sql.append("insert into hotkey values(");
		// sql.append("hotkey_seq.nextVal,?,?,?,?,sysdate)");
		// pstmt= con.prepareStatement(sql.toString());
		// pstmt.setString(1, vo.getKey_name());
		// pstmt.setInt(2, vo.getKey_hotkey());
		// pstmt.setString(3, vo.getKey_email());
		// pstmt.setInt(4, vo.getKey_crnum());
		// pstmt.executeUpdate();
		//
		// }catch (SQLException e) {
		// e.printStackTrace();
		// }finally {
		// try {
		// if (pstmt != null) pstmt.close();
		// if (con != null) con.close();
		// } catch (SQLException e) {
		// e.printStackTrace();
		// }

	}

	public List<ShopHotkeyVO> getListRequestShop() {
		return ss.selectList("shop.getListRequestShop");
	}

	public List<ShopHotkeyVO> checkhotcrnumname(int crnum) {
		return ss.selectList("shop.checkhotcrnumname", crnum);

	}

	public boolean checkid(String id) {
		ShopVO vo = ss.selectOne("shop.checkid", id);
		boolean res;
		if (vo.getShop_id() != null) {
			res = true;
		} else {
			res = false;
		}

		return res;
	}

	public boolean checkMasteridpwd(String id, String pwd) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		ShopVO vo = ss.selectOne("ShopVO", map);
		boolean res;
		if (vo.getShop_id() != null) {
			res = true;
		} else {
			res = false;
		}

		return res;
	}

	public boolean checkStaffidpwd(String id, String pwd) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		ShopVO vo = ss.selectOne("shop.checkStaffidpwd", map);
		boolean res;
		if (vo.getShop_id() != null) {
			res = true;
		} else {
			res = false;
		}

		return res;
	}

	public int getshopno(String id) {
		return ss.selectOne("shop.getshopno", id);
	}

	public List<ShopVO> getshopname(String id) {
		return ss.selectList("shop.getshopname", id);
	}

	// shop id 찾기
	public String findid(String name, String tel) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("tel", tel);
		return ss.selectOne("shop.findid", map);
	}

	// shop pwd 찾기
	public String findpwd(String name, String id) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("shop_name", name);
		map.put("shop_id", id);
		String res = ss.selectOne("shop.findpwd", map);

		return res;
	}

	// 핫키 생성
	private int createHotkey() {
		int hotkey = (int) (Math.random() * 666666) + 111111;// 0~99까지
		return hotkey;
	}

	// 매장 전체 검색
	public List<ShopVO> getshopList() {
		List<ShopVO> shopList = ss.selectList("shop.shopList");
		return shopList;
	}

	// 맴버 정보를 디비에서 빼옴 검색한 내용에 맞게

	public List<MemVO> getListMember(String mem_name) {
		return ss.selectList("shop.memberlist", mem_name);
	}

	
	public List<SmangVO> getListProduct(String check, String shopnum) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("check", check);
		map.put("shopnum", shopnum);

		return ss.selectList("shop.listproduct", map);
	}
	
	
	// 맴버 추가
	public void insertMem(MemVO vo) {
		ss.insert("shop.insertMem", vo);
	}

	public MemVO getDetail(int mem_num) {
		return ss.selectOne("shop.memdetail", mem_num);
	}

	// 물어볼것 / 헷갈리네..
	public void getfinish(MemVO vo) {
		ss.update("shop.memupdate", vo);
	}
	public void getsecede(int num) {
		ss.delete("shop.memdelete", num);
		
	}

}