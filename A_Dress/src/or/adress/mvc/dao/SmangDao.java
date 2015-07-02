package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import vo.SmangVO;

@Repository
public class SmangDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	private static SmangDao dao;
	
	public static synchronized SmangDao getDao() {
		if (dao == null) {
			dao = new SmangDao();
		}
		return dao;
	}
	public void editstock(int pro_num, int many, int size, int shopnum){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int camount = 0;
		System.out.println(pro_num);
		System.out.println(many);
		System.out.println(size);
		System.out.println(shopnum);
		
		StringBuffer sql1 = new StringBuffer();
		sql1.append("select sto_amount from stock where sto_pronum = ? and sto_size = ? and sto_shopnum = ?");
		try {
			
			pstmt = con.prepareStatement(sql1.toString());
			pstmt.setInt(1, pro_num);
			pstmt.setInt(2, size);
			pstmt.setInt(3, shopnum);
			rs = pstmt.executeQuery();
			while(rs.next()){
				camount = rs.getInt("sto_amount");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null){
					pstmt.close();
				}
				if (con != null){
					con.close();
				}if (rs != null){
					rs.close();
				}	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		con = null;
		pstmt = null;
		StringBuffer sql2 = new StringBuffer();
		sql2.append("update stock set sto_amount = ? where sto_pronum = ? and sto_size = ? and sto_shopnum = ?");
		try {
			
			pstmt = con.prepareStatement(sql2.toString());
			pstmt.setInt(1, (camount-many));
			pstmt.setInt(2, pro_num);
			pstmt.setInt(3, size);
			pstmt.setInt(4, shopnum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				if (pstmt != null){
					pstmt.close();
				}
				if (con != null){
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void inmile(int mile, int cusnum){
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append("update member set mem_mileage = ? where mem_num = ?");
		try {
		
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, mile);
			pstmt.setInt(2, cusnum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null){
					pstmt.close();
				}
				if (con != null){
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	public void insertsell(int code, int cash, int many, int shopnum, int fmileage, int cusnum, boolean chk, int size){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs1 = null;
		int next = 0;
		System.out.println(cusnum);
		StringBuffer sql1 = new StringBuffer();
		sql1.append("select max(sell_sell) maxs from sell");
		
			try {
				System.out.println("여기까지는 오나");
				
				pstmt = con.prepareStatement(sql1.toString());
				rs1 = pstmt.executeQuery();
				System.out.println("여기오면 성공");
				while(rs1.next()){
					next = rs1.getInt("maxs");
				}
				if(chk){
				next++;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		
		
		StringBuffer sql = new StringBuffer();
		sql.append("insert into sell values(sell_seq.nextval, ?, ?, ?, ?, ?, sysdate, ?, ?, ?)");
		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, code);
			pstmt.setInt(2, cash);
			pstmt.setInt(3, fmileage);
			pstmt.setInt(4, shopnum);
			pstmt.setInt(5, cusnum);
			pstmt.setInt(6, next);
			pstmt.setInt(7, many);
			pstmt.setInt(8, size);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null){
					pstmt.close();
				}
				if (con != null){
					con.close();
				}	
				if (rs1 != null){
					rs1.close();
				}	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}
	public ArrayList<SmangVO> getListProduct(String seq, int shop_num){
		System.out.println(seq);
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SmangVO> list = new ArrayList<SmangVO>();
		StringBuffer sql = new StringBuffer();
		sql.append("select p.pro_code, p.pro_name, p.pro_price, s.sto_size, sh.shop_name, s.sto_amount, p.PRO_IMG, p.PRO_BARCODE from product p, stock s, shop sh where p.pro_code = s.sto_pronum and sh.shop_num=sto_shopnum and p.pro_code = ? and sh.shop_num = ?");
		try {
		
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, seq);
			pstmt.setInt(2, shop_num);
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
				if (pstmt != null){
					pstmt.close();
				}
					
				if (con != null){
					con.close();
				}
					
				if (rs != null){
					System.out.println("클로즈체크2");
					rs.close();
				}
					
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return list;
		}
	
//	public ArrayList<SmangVO> getListProduct(String check) {
//		System.out.println(check);
//		int seq = 0;
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<SmangVO> list = new ArrayList<SmangVO>();
//		StringBuffer sql = new StringBuffer();
//		sql.append("select pro_num from product where pro_code = ?");
//		try {
//			con = MyJndiContext.getDs();
//			pstmt = con.prepareStatement(sql.toString());
//			pstmt.setString(1, check.trim());
//			rs = pstmt.executeQuery();
//			while(rs.next()){
//				seq = rs.getInt("pro_num");
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if (pstmt != null){
//					pstmt.close();
//				}
//					
//				if (con != null){
//					con.close();
//				}
//					
//				if (rs != null){
//					System.out.println("클로즈체크1");
//					rs.close();
//				}
//					
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			
//		}
//		list = getListProduct2(seq);
//		return list;
//	}
}
