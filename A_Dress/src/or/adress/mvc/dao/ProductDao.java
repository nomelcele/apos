package or.adress.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.Part;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.MemVO;
import vo.ProductVO;
import conn.MyJndiContext;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	private static ProductDao dao;
	public static synchronized ProductDao getDao() {
		if (dao == null)
			dao = new ProductDao();
		return dao;
	}
	public void stockedit(int pamount, String pronum, int shopnum, int psize){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("update stock set sto_amount=? where sto_pronum=? and sto_shopnum=? and sto_size=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, pamount);
			pstmt.setString(2, pronum);
			pstmt.setInt(3, shopnum);
			pstmt.setInt(4, psize);
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
	public void insert(ProductVO vo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = MyJndiContext.getDs();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into product values(");
			sql.append("product_seq.nextVal,?,?,?,?,sysdate,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getPro_name());
			pstmt.setString(2, vo.getPro_code());
			//pstmt.setInt(3, vo.getPro_size());
			pstmt.setString(3, vo.getPro_barcode());
			pstmt.setString(4, vo.getPro_img());
			pstmt.setInt(5, vo.getPro_price());
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
		System.out.println("瓽");
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
				v.setPro_barcode(rs.getString("pro_barcode"));
				v.setPro_img(rs.getString("pro_img"));
				v.setPro_date(rs.getString("pro_date"));
				v.setPro_price(rs.getInt("pro_price"));
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
		
		sql.append("select p.pro_name pro_name,sh.shop_name shop_name,s.sto_size sto_size,s.sto_amount  sto_amount ");
		sql.append("from product p, stock s, shop sh ");
		sql.append("where p.pro_code = s.sto_pronum and  ");
		sql.append("sh.shop_num=sto_shopnum and  ");
		sql.append("p.pro_code = ? and sh.shop_num = ? ");
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		try {
			con = MyJndiContext.getDs();
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, code);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ProductVO v = new ProductVO();

				v.setPro_name(rs.getString("pro_name"));
				v.setShop_name(rs.getString("shop_name"));
				v.setSto_size(rs.getString("sto_size"));
				v.setSto_amount(rs.getString("sto_amount"));
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
