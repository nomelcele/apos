package or.adress.mvc.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import or.adress.mvc.dao.BoardDao;
import or.adress.mvc.dao.ProductDao;
import or.adress.mvc.dao.ShopDao;
import or.adress.mvc.dao.SmangDao;
import or.adress.mvc.dao.StaffDao;

import org.apache.ibatis.javassist.compiler.MemberResolver.Method;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.BoardVO;
import vo.CommVO;
import vo.MemVO;
import vo.PageVO;
import vo.ProductVO;
import vo.ShopVO;
import vo.StaffVO;

@Controller
public class Shopcon {
	@Autowired
	private StaffDao staffdao;
	@Autowired
	private ShopDao shopdao;
	@Autowired
	private ProductDao productdao;
	@Autowired
	private BoardDao bdao;
	@Autowired
	private SmangDao smdao;

	@RequestMapping(value = "/sh_index")
	   public String index(HttpSession session) {
	      /////////�ӽü���
	      session.setAttribute("sh_id", "dodi");
	      session.setAttribute("sh_name", "������");
	      session.setAttribute("shop_num", 1);
	      ///////////////
	      
	      System.out.println("index ����");
	      return "shop/sh_index";
	   }


	   // �������� - ��������
	   @RequestMapping(value = "/sh_workNotice", method=RequestMethod.POST)
	   public ModelAndView sh_workNotice(int page) {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("shop/sh_workNotice");

	      //����¡ó�� (�Խ���)
	      PageVO pageInfo = pageProcess(page, 0, 0);
	      HashMap<String, Integer> map = new HashMap<>();
	      map.put("begin", pageInfo.getStartRow());
	      map.put("end", pageInfo.getEndRow());
	      //
	      List<BoardVO> list =  bdao.getList(map);
	      
	      mav.addObject("pageInfo", pageInfo);
	      mav.addObject("list", list);
	      return mav;
	   }
	   
	   // �������� - �������� - ������
	   @RequestMapping(value="/sh_workNoticedetail", method=RequestMethod.POST)
	   public ModelAndView bon_workNoticedetail(int no, int page){
	      ModelAndView mav = new ModelAndView("shop/sh_workNoticeDetail");
	      //����¡ó�� (���)
	         PageVO pageInfo = pageProcess(page, no, 1);
	         HashMap<String, Integer> map = new HashMap<>();
	         map.put("begin", pageInfo.getStartRow());
	         map.put("end", pageInfo.getEndRow());
	      //
	         map.put("no", no);
	         System.out.println("����"+pageInfo.getStartRow());
	         System.out.println("��"+pageInfo.getEndRow());
	      List<CommVO> clist = bdao.getCommList(map);
	      BoardVO v = bdao.getDetail(no);
	      v.setPath("upload/"+v.getPath());
	      System.out.println(v.getPath());
	      mav.addObject("clist", clist);
	      mav.addObject("v", v);
	      mav.addObject("pageInfo", pageInfo);
	      return mav;
	   }
	   
	   // �������� - �������� - ��ۻ���
	   @RequestMapping(value="/sh_commdelete")
	   public ModelAndView bon_commdelete(int no, int bo_num, String writer, int page, HttpSession session){
	      String sh_id = session.getAttribute("sh_id").toString();
	      
	      if(sh_id.equals(writer)){
	         
	         bdao.deleteComm(no);
	      }
	      return bon_workNoticedetail(bo_num, page);
	   }
	   
	   // �������� - �������� - ����Է�
	   @RequestMapping(value="/sh_commin", method=RequestMethod.POST)
	   public ModelAndView bon_commin(String comm_bonum, String comm_cont, HttpSession session){
	      int page = 1;
	      HashMap<String, String> map = new HashMap<String, String>();
	      map.put("no", comm_bonum);
	      map.put("cont", comm_cont);
	      map.put("writer", session.getAttribute("sh_id").toString());
	      bdao.insertComm(map);
	      return bon_workNoticedetail(Integer.parseInt(comm_bonum), 1);
	   }
	// �������� - ���α���
	@RequestMapping(value = "/sh_workItr")
	public ModelAndView sh_workItr() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workItr");
		return mav;
	}

	// �������� - ���
	@RequestMapping(value = "/sh_workTerm")
	public ModelAndView sh_workTerm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTerm");
		return mav;
	}

	// �������� - ����ó
	@RequestMapping(value = "/sh_workTel")
	public ModelAndView sh_workTel() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		return mav;
	}

	// �������� - ����ó- ������ �˻�
	@RequestMapping(value = "/sh_workTelSearch", method = RequestMethod.POST)
	public ModelAndView sh_workTelSearch(String shop_name) {
		System.out.println("�����̸�:" + shop_name);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_workTel");
		List<StaffVO> list = staffdao.getList(shop_name);
		mav.addObject("list", list);

		return mav;
	}

	// ȸ������ - ȸ������
	@RequestMapping(value = "/sh_memberJoin")
	public ModelAndView sh_memberJoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		return mav;
	}

	// ȸ������ - ȸ������ -���ԿϷ�
	@RequestMapping(value = "/sh_memberjoinjoin", method = RequestMethod.POST)
	public ModelAndView sh_memberjoinjoin(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberJoin");
		System.out.println("���̸�:" + vo.getMem_name());
		shopdao.insertMem(vo);
		mav.setViewName("shop/sh_index");
		return mav;
	}

	// ---------�濬
	@RequestMapping(value = "/sh_memberCheck", method = RequestMethod.POST)
	public ModelAndView sh_memberCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		return mav;
	}

	// ȸ������ - ȸ����ȸ/����
	@RequestMapping(value = "/sh_memberChecksr", method = RequestMethod.POST)
	public ModelAndView sh_memberChecksr(String mem_name) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mem_name);
		List<MemVO> list = shopdao.getListMember(mem_name);
		mav.setViewName("shop/sh_memberCheck");
		mav.addObject("stList", list);
		return mav;
	}

	// ȸ������ - ȸ����������
	// ó�� ȭ��
	@RequestMapping(value = "/sh_memberDetail")
	public ModelAndView sh_memberDetail(String num) {
		ModelAndView mav = new ModelAndView();
		int mem_num = Integer.parseInt(num);
		System.out.println("num: " + mem_num);
		mav.setViewName("shop/sh_memberDetail");
		MemVO vo = shopdao.getDetail(mem_num);
		mav.addObject("v", vo);
		return mav;
	}

	// Ż��
	@RequestMapping(value = "/sh_memberDetail_del")
	public ModelAndView sh_memberDetail_del(String num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_memberCheck");
		int mem_num = Integer.parseInt(num);
		System.out.println("mem_num" + mem_num);
		System.out.println("Ż�� �Ϸ�Ǿ����ϴ�.");
		shopdao.getsecede(mem_num);
		return mav;
	}

	// ����
	@RequestMapping(value = "/sh_memdetail_change")
	public ModelAndView memdetail_change(MemVO vo) {
		ModelAndView mav = new ModelAndView();
		shopdao.getfinish(vo);
		System.out.println("������ �Ϸ�Ǿ����ϴ�");
		System.out.println(mav);
		return mav;
	}

	// ---------�濬

	// --�濬---------------------------------------

	// ó�� ȭ��
	// ��ǰ���� - ��ǰ��ȸ
	@RequestMapping(value = "/sh_productCheck")
	public ModelAndView sh_productCheck() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_productCheck");
		return mav;
	}

	//��ť��Ƽ�� �߰� ����
	@RequestMapping(value = "/sh_productsaerch", method = RequestMethod.POST)
	public ModelAndView sh_productsaerch(String pro_name) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, String> map =new HashMap<String, String>();
		map.put("pro_check", pro_name);
		map.put("shop_num", "1");
		// List<ProductVO> list = productdao.getListProduct_bon(pro_name);
		List<ProductVO> list = productdao.getListProduct(map);
		mav.setViewName("shop/sh_productCheck");
		mav.addObject("list", list);
		return mav;
	}

	// --�濬---------------------------------------

	// �Ǹŵ�� - �Ǹŵ��
	@RequestMapping(value = "/sh_smangRegis")
	public ModelAndView sh_smangRegis() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangRegis");
		return mav;
	}
	
	@RequestMapping(value="/sh_smangRegising", method=RequestMethod.POST)
	public ModelAndView sh_smangRegising(HttpServletRequest request, HttpSession session){
		
		int shopnum =  (int) session.getAttribute("shop_num");
		System.out.println("������ ���� Ȯ�� : "+shopnum);
		//int shopnum = Integer.parseInt(request.getParameter("fshopnum"));
		int fmileage = Integer.parseInt(request.getParameter("fmileage"));
		int cusnum = Integer.parseInt(request.getParameter("fcusnum"));
		int s = Integer.parseInt(request.getParameter("fset"));
		boolean chk = true;
		for(int i=1 ; i<=s ; i++){
			String fcode = "fcode"+i;
			String fcash = "fcash"+i;
			String fmany = "fmany"+i;
			String fsize = "fsize"+i;
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
		System.out.println(mile);
		SmangDao.getDao().inmile(mile, cusnum);
		method = true;
	}

	// �Ǹŵ�� - ��ȯ/ȯ��
	@RequestMapping(value = "/sh_smangExchTefu")
	public ModelAndView sh_smangExchTefu() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop/sh_smangExchTefu");
		return mav;

	}

	// ------------------------------------------------------- �̸�----

	// �Ǹ� ���- ��ȯ/ȯ��
	
	
	
	
	
	
	
	
	
	
	//����¡ ó�� ���� �ż���
	 private PageVO pageProcess(int page, int no, int etc){
         PageVO pageInfo = new PageVO();
         
         int rowsPerPage = 5;
         int pagesPerBlock = 5;
         //�ܺο��� ���� ������ ���� �޾� ���°� ���� ����
         int currentPage = page;
         //Integer.parseInt(request.getParameter("page"));
         
         int currentBlock = 0;
         if(currentPage % pagesPerBlock == 0){
            currentBlock = currentPage / pagesPerBlock;
         }else{
            currentBlock = currentPage / pagesPerBlock + 1;
         }
         // ���� ��ϰ� �������� ���� ������ ���������� ������������ : �Ѻ�Ͼȿ� ����������
         int startRow = (currentPage - 1) * rowsPerPage + 1;
         int endRow = currentPage * rowsPerPage;
         
         int totalRows = 0;
         //�޼��带 ȣ��ÿ� etc�� ���� 0�̶�� ����Ʈ�� �ѵ����͸�
         // 1�̶�� comm�� �ѵ����͸� �������� Dao�� �޼��带 ���� �޾ƿ´�.
         if(etc == 0){
            totalRows = bdao.getTotalCount();
            
         }else if(etc == 1){
            //int no = Integer.parseInt(request.getParameter("no"));
            System.out.println(no);
            totalRows = bdao.getTotalCommCount(no);
            System.out.println(totalRows);
         }
         
         int totalPages = 0;
         if(totalRows % rowsPerPage == 0){
            totalPages = totalRows / rowsPerPage;
         }else{
            totalPages = totalRows / rowsPerPage + 1;
         }
         
         int totalBlocks = 0;
         if(totalPages % pagesPerBlock == 0){
            totalBlocks = totalPages / pagesPerBlock;
         }else{
            totalBlocks = totalPages / pagesPerBlock + 1;
         }
         
         pageInfo.setCurrentPage(currentPage);
         pageInfo.setCurrentBlock(currentBlock);
         pageInfo.setRowsPerPage(rowsPerPage);
         pageInfo.setPagesPerBlock(pagesPerBlock);
         pageInfo.setStartRow(startRow);
         pageInfo.setEndRow(endRow);
         pageInfo.setTotalRows(totalRows);
         pageInfo.setTotalPages(totalPages);
         pageInfo.setTotalBlocks(totalBlocks);
         
         //request.setAttribute("pageInfo", pageInfo);
//         HashMap<String, Integer> map = new HashMap<>();
//         map.put("begin", startRow);
//         map.put("end", endRow);
         
         System.out.println(startRow+"---"+endRow);
         return pageInfo;
      }
	
	
	
	
}
