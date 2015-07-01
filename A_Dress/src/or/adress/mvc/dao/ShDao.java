package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;








import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.MemVO;
import vo.ProductVO;
import vo.ShopVO;
import vo.SmangVO;
import conn.MyJndiContext;

@Repository
public class ShDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	private static ShDao dao;

	public static synchronized ShDao getDao() {
		if (dao == null) {
			dao = new ShDao();
		}
		return dao;
	}
	public ArrayList<String> getListSuggestShop(String key){
		Connection con = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		ArrayList<String>list =new ArrayList<String>();
		StringBuffer sql = new StringBuffer();
		sql.append("select * from shop where shop_num like ? or shop_name like ?");
		try {
			con = MyJndiContext.getDs();
			pstmt=con.prepareStatement(sql.toString());
			String check=key+'%';
			pstmt.setString(1, check);
			pstmt.setString(2, check);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getString("shop_name"));
				list.add(String.valueOf((rs.getInt("shop_num"))));
	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if(rs!=null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
		
	}
	// 맴버 정보를 디비에서 빼옴 검색한 내용에 맞게  
	public ArrayList<MemVO> getListMember(String name) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MemVO> list = new ArrayList<MemVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select * from member where mem_name like ? or mem_tel like ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, name);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemVO v= new MemVO();
				v.setMem_num(rs.getInt("mem_num"));
				v.setMem_name(rs.getString("mem_name"));
				v.setMem_tel(rs.getString("mem_tel"));
				v.setMem_addr(rs.getString("mem_addr")+rs.getString("mem_deaddr"));
				v.setMem_date(rs.getString("mem_date"));
				v.setMem_email(rs.getString("mem_email"));
				v.setMem_mileage(rs.getInt("mem_mileage"));
				//v.setMem
//				BoardVO v = new BoardVO();
//				v.setTitle(rs.getString("BO_SUB"));
//				v.setNo(rs.getInt("BO_NUM"));
//				v.setWriter(rs.getString("BO_WRITER"));
//				v.setRegdate(rs.getString("BO_DATE"));
//				v.setHit(rs.getInt("BO_HIT"));
//				v.setPath(rs.getString("BO_IMG"));
//				v.setGroupno(rs.getInt("BO_BONNUM"));
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if(rs!=null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public ArrayList<SmangVO> getListProduct(String check,String shopnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SmangVO> list = new ArrayList<SmangVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select p.pro_code, p.pro_name, p.pro_price, s.sto_size, sh.shop_name, s.sto_amount, p.PRO_IMG, p.PRO_BARCODE from product p, stock s, shop sh where p.pro_code = s.sto_pronum and sh.shop_num=sto_shopnum and( p.pro_code like ? or p.pro_name like ?) and sh.shop_num = ?");
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			String sqlcheck= check+"%";
			pstmt.setString(1, sqlcheck);
			pstmt.setString(2, sqlcheck);
			pstmt.setInt(3, Integer.parseInt(shopnum));
			System.out.println(sqlcheck);
			//pstmt.setString(3, shopnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SmangVO v = new  SmangVO();
				v.setPro_code(rs.getString("pro_code"));
				v.setPro_name(rs.getString("pro_name"));
				v.setPro_price(rs.getInt("pro_price"));
				v.setSto_size(rs.getInt("sto_size"));
				v.setShop_name(rs.getString("shop_name"));
				v.setSto_amount(rs.getInt("sto_amount"));
				v.setPro_img(rs.getString("pro_img"));
				v.setPro_barcode(rs.getString("pro_barcode"));
				list.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if(rs!=null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//상품에 대한 정보를 suggest로 
	public ArrayList<String> suggestListProduct(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
	
		System.out.println("check :" + check );
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select pro_name, pro_code from product where pro_name like ? or pro_code like ?");
			pstmt = con.prepareStatement(sql.toString());
			String str3 = "%"+check +"%";
			pstmt.setString(1, str3);
			pstmt.setString(2, str3);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("pro_name"));
				list.add(rs.getString("pro_code"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return list;
	}
	//suggest고객 정보를 이름과 전화번호로 뽑는다~
	public ArrayList<String> suggestListMember(String check) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> list = new ArrayList<String>();
		

		System.out.println("check :" + check );
		try {
			System.out.println("test");
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("select mem_name, mem_tel from member where mem_name like ? or mem_tel like ?");
			pstmt = con.prepareStatement(sql.toString());
			String str3 = "%"+check +"%";
			pstmt.setString(1, str3);
			pstmt.setString(2, str3);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("mem_name"));
				list.add(rs.getString("mem_tel"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return list;
	}

	public void insertMem(HashMap<String, String> map) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("확인");
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			StringBuffer post = new StringBuffer();
			StringBuffer tel = new StringBuffer();
			sql.append("insert into member values(");
			sql.append("member_seq.nextval,?,?,?,?,?,0,sysdate,1,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("name"));
			tel.append(map.get("tel1")).append("-").append(map.get("tel2")).append("-").append(map.get("tel3"));
			pstmt.setString(2, tel.toString());
			post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(3, post.toString());
			pstmt.setString(4, map.get("adr3"));
			pstmt.setString(5, map.get("adr4"));
			// 나중에 세션처리 구현 하면 넣어야되 회원이 가입한 상점번호
			// pstmt.setString(6,map.get("shopnum"));
			pstmt.setString(6, map.get("email"));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
	
	public MemVO getDetail(int no){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		
		sql.append("select *");
		sql.append("from member where mem_num=?");
		MemVO v = new MemVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				v.setMem_num(rs.getInt("mem_num"));
				v.setMem_name(rs.getString("mem_name"));
				v.setMem_tel(rs.getString("mem_tel"));
				v.setMem_addr(rs.getString("mem_addr"));
				v.setMem_deaddr(rs.getString("mem_deaddr"));
				v.setMem_date(rs.getString("mem_date"));
				
				v.setMem_email(rs.getString("mem_email"));
				v.setMem_mileage(rs.getInt("mem_mileage"));
				System.out.println("getdetail: "+v.getMem_name());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				
				if  (rs != null) rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return v;
	}
	
	public MemVO getfinish(HashMap<String, String> map){
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		StringBuffer post = new StringBuffer();
		StringBuffer tel = new StringBuffer();
		/*update member set 
mem_name='서경연님' ,
mem_tel='010-7664-0585',
mem_addr='야탑동',
mem_mileage='1000'
where mem_num='3';*/
		sql.append("update member set");
		sql.append(" mem_tel=?,mem_addr=?,mem_deaddr=?,mem_mileage=?");
		sql.append(" where mem_num=?");
		MemVO v = new MemVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			//tel.append(map.get("tel1")).append("-").append(map.get("tel2")).append("-").append(map.get("tel3"));
			pstmt.setString(1, map.get("memtel"));
			//post.append(map.get("adr1")).append("-").append(map.get("adr2"));
			pstmt.setString(2, map.get("addr"));
			pstmt.setString(3, map.get("deaddr"));
			pstmt.setString(4, map.get("mileage"));
			pstmt.setString(5, map.get("num"));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return v;
	}
	public MemVO getsecede(int num){
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
// delete from member where mem_num='22';
		sql.append("delete from member");
		sql.append(" where mem_num=?");
		MemVO v = new MemVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return v;
	}


}
