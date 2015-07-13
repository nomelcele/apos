package or.adress.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ShopVO;
import vo.StaffVO;

@Repository
public class StaffDao { // ���濬
	@Autowired
	private SqlSessionTemplate ss;
		// staff�� ������ list�� ��ȯ �մϴ�. staff, shop �Ѵ� ���ϴ�.
	public List<StaffVO> getList(String shop_name) {
		List<StaffVO>list = ss.selectList("staff.get_list",shop_name);
		System.out.println("�鰨");
		return list;
	}

  public List<StaffVO>gettotalList(){
	  List<StaffVO>list=ss.selectList("staff.get_totallist");
	  return list;
  }
	// ������ ������ ���߿� �Ѵ�ϴ�. 
//	public ArrayList<StaffVO> suggestList(String check) {
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<StaffVO> list = new ArrayList<StaffVO>();
//
//		String str = "";
//		System.out.println("check :" + check);
//		try {
//			System.out.println("test");
//			con = MyJndiContext.getDs();
//			StringBuffer sql = new StringBuffer();
//			if(check == null || check.equals("")){
//				System.out.println("����");
//				sql.append("select st.staff_num stn, sh.shop_name shn, st.staff_tel stt, st.staff_position stp, st.staff_name stna from staff st,shop sh where st.staff_shopnum=sh.shop_num");
//				pstmt = con.prepareStatement(sql.toString());
//				rs = pstmt.executeQuery();
//			}else{
//				System.out.println("����");
//				sql.append("select st.staff_num stn, sh.shop_name shn, st.staff_tel stt, st.staff_position stp, st.staff_name stna from staff st,shop sh where st.staff_shopnum=sh.shop_num and sh.shop_name like ? or staff_tel like ?");
//				pstmt = con.prepareStatement(sql.toString());
//				String str3 = "%" + check + "%";
//				pstmt.setString(1, str3);
//				pstmt.setString(2, str3);
//				rs = pstmt.executeQuery();
//
//			}
//			while (rs.next()) {
//				StaffVO v = new StaffVO();
//				v.setShop_snum(Integer.parseInt(rs.getString("stn")));
//				v.setShop_name(rs.getString("shn"));
//				v.setShop_sposition(rs.getString("stp"));
//				v.setShop_sname(rs.getString("stna"));
//				v.setShop_stel(rs.getString("stt"));
//				list.add(v);
//			}
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			try {
//				if (pstmt != null)
//					pstmt.close();
//				if (con != null)
//					con.close();
//				if (rs != null)
//					rs.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//		}
//		return list;
//	}

	public void insertMem(HashMap<String, String> map) {
		ss.insert("staff.insert_mem",map);
	}
	// �̿ϼ��� �ڵ� ���Ƽ� �̴�� �Ӵϴ�. mapper�� ������ �ʾҽ��ϴ�.
	public void getListName(HashMap<String, String> map) {
//		/*Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<StaffVO> list = new ArrayList<StaffVO>();

	}
		// ID ã�⿡�� ���� - ��ȣ
		// staff name,tel���� id(snamd)ã��
		public String findid(StaffVO vo){
			String res = ss.selectOne("staff.find_id",vo);
			return res;
		}
		// PWD ã�⿡�� ����
		// staff_name,id�� staff_pwdã��
		public String findpwd(StaffVO vo){
			String res = ss.selectOne("staff.find_pwd",vo);
			return res;
		}
		
}
