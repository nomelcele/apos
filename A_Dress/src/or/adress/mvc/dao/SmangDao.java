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
	public void editstock(HashMap<String, Integer> map){
		int camount = ss.selectOne("smang.smang_editstock", map);
		int many = map.get("many");
		map.put("amount", camount-many);
		ss.update("smang.smang_editstock", map);
		
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
	public void insertsell(HashMap<String, Integer> map, boolean chk){
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
	public List<SmangVO> getListProduct(HashMap<String, String> map){
		return ss.selectList("smang.smang_getlistproduct", map);
		}
	
}
