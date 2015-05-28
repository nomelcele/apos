package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.Part;

import vo.BoardVO;
import vo.MemVO;
import vo.ProductVO;
import conn.MyJndiContext;

public class ProductDao {
	private static ProductDao dao;
	public static synchronized ProductDao getDao() {
		if (dao == null)
			dao = new ProductDao();
		return dao;
	}
	public void insert(ProductVO vo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into product values(");
			sql.append("product_seq.nextVal,?,?,?,?,?,sysdate,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getPro_name());
			pstmt.setString(2, vo.getPro_code());
			pstmt.setInt(3, vo.getPro_size());
			pstmt.setString(4, vo.getPro_barcode());
			pstmt.setString(5, vo.getPro_img());
			pstmt.setInt(6, vo.getPro_price());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
	public ProductVO getProduct(String code){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		
		sql.append("select *");
		sql.append("from product where pro_code=?");
		ProductVO v = new ProductVO();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();
			if(rs.next()){
				v.setPro_name(rs.getString("pro_name"));
				v.setPro_code(rs.getString("pro_code"));
				v.setPro_img(rs.getString("pro_img"));
				System.out.println("构具构具");
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
	public ArrayList<ProductVO> getListProduct_bon(String name){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		
		sql.append("select *");
		sql.append("from product where pro_name like ?");
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		try {
			con = MyJndiContext.getDs();
			String key = name+'%';
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductVO v = new ProductVO();

				v.setPro_name(rs.getString("pro_name"));
				v.setPro_code(rs.getString("pro_code"));
				v.setPro_date(rs.getString("pro_date"));
				v.setPro_img(rs.getString("pro_img"));
				list.add(v);
				System.out.println("构具构具");
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
		return list;
	}
	public ArrayList<ProductVO> getListProduct_bon2(String code,String num){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		/* select * from stock;
  select p.PRO_NAME ,sh.shop_name,st.sto_size,st.STO_AMOUNT 
  from stock st, product p,shop sh where st.sto_shopnum = sh.SHOP_NUM and st.STO_PRONUM =p.pro_code
  and st.sto_pronum='15110001' and sh.shop_name='魄背痢';*/
		sql.append("select p.PRO_NAME ,sh.shop_name,st.sto_size,st.STO_AMOUNT ");
		sql.append("from stock st, product p,shop sh where ");
		sql.append("st.sto_shopnum = sh.SHOP_NUM and st.STO_PRONUM =p.pro_code ");
		sql.append("and st.sto_pronum=? and sh.shop_name=?");
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, code);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductVO v = new ProductVO();

				v.setPro_name(rs.getString("p.PRO_NAME"));
				v.setPro_code(rs.getString("sh.shop_name"));
				v.setPro_date(rs.getString("st.sto_size"));
				v.setPro_img(rs.getString("st.STO_AMOUNT"));
				list.add(v);
				System.out.println("构具构具");
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
		return list;
	}
}
