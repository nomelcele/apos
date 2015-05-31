package action;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import util.MyMap;
import vo.MemVO;
import vo.ProductVO;
import controller.ActionForward;
import dao.ProductDao;
import dao.ShDao;

public class BProductAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String subcmd = request.getParameter("subcmd");

		String url = "bon_index.jsp";
		boolean method = false;
		if (subcmd.equals("add")) {
			url = "bon_productAdd.jsp";
			String childcmd = request.getParameter("childcmd");
			if (childcmd != null && childcmd.equals("in")) {
				ProductVO vo = new ProductVO();
				String pimgname = "";
				String bimgname = "";
				try {
					Part pipart = request.getPart("pimg");
					Part bipart = request.getPart("bimg");
					pimgname = getFileName(pipart);
					bimgname = getFileName(bipart);

					if (pimgname != null && pimgname.length() != 0) {
						pipart.write(pimgname);
					}
					if (bimgname != null && bimgname.length() != 0) {
						bipart.write(bimgname);
					}
				} catch (ServletException e) {
					e.printStackTrace();
				}
				vo.setPro_name(request.getParameter("name"));
				vo.setPro_code(request.getParameter("code"));
				//vo.setPro_size(Integer.parseInt(request.getParameter("size")));
				vo.setPro_price(Integer.parseInt(request.getParameter("price")));
				vo.setPro_img(pimgname);
				vo.setPro_barcode(bimgname);

				ProductDao.getDao().insert(vo);
			}

		} else if (subcmd.equals("del")) {
			url = "bon_productDelete.jsp";
			String childcmd = request.getParameter("childcmd");
			if (childcmd != null && childcmd.equals("pcode")) {
				String code=request.getParameter("bpcode");
				// num�� ��ǰ�ڵ忩
				ProductVO v= ProductDao.getDao().getProduct(code);
				request.setAttribute("v", v);
			}
			
		} else if (subcmd.equals("sale")) {
			url = "bon_productSale.jsp";
		}else if (subcmd.equals("stoedit")){
			url = "bon_productSale.jsp";
			int pamount = Integer.parseInt(request.getParameter("pamount"));
			String pronum = request.getParameter("pcode");
			int shopnum = Integer.parseInt(request.getParameter("shop"));
			int psize = Integer.parseInt(request.getParameter("psize"));
			ProductDao.getDao().stockedit(pamount, pronum, shopnum, psize);
		}
		
		return new ActionForward(url, false);
	}

	private String getFileName(Part part) {
		// ���� �̸��� ������ ����
		String fileName = "";

		// ����� ��� ���� ��������
		String header = part.getHeader("content-disposition");
		System.out.println(header);
		// header�� ������ ; �� �������� �����ؼ� �迭�� ����
		String[] elements = header.split(";");

		// elements���� filename�� �ش��ϴ� ������ ã��
		for (String element : elements) {
			// filename���� �����ϴ� elements�� ã���� �ű⿡�� ������ ���ڿ��� fileName
			if (element.trim().startsWith("filename")) {
				fileName = element.substring(element.indexOf('=') + 1);

				// fileName�� [\"] ["]�� �ִٸ� ����
				// "�� ���� ���簡 �Ұ��� �ϱ� ������ \" ǥ���Ѱ���
				fileName = fileName.trim().replace("\"", "");
			}
		}
		return fileName;
	}

}
