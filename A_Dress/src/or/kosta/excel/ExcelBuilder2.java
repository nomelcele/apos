package or.kosta.excel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import vo.SalesCheckVO;
import vo.StaffVO;

//AbstractExcelView�� ��ӹ޾Ƽ� ����ϴµ�
public class ExcelBuilder2 extends AbstractExcelView{
	// excelView �並 ã����, �̰��� ����Ŭ���� ExcelBuilder��
	// AbstractExcelView�� ����߱� ������ �̰��� ���̴�.
	
	
	//�����ļ��� -> [view]jsp (model) : forward ///// model�� �ش�
	//�����İ� �� �޼��带 ȣ�����ش�
	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// HSSF ����ũ�� ����Ʈ�� ���� ���� Ŭ����
		// �����ļ��� �� ���ؼ� Model�� �޴´�
		// ${listBooks}�� ������
		List<StaffVO> list = (List<StaffVO>) model.get("list");
		String excel_date = model.get("date_ps").toString();
		String excel_date2 = model.get("date_ps2").toString();
		String staff_num = model.get("staff_num").toString();
		//List<ShowVO> listBooks = (List<ShowVO>) model.get("listBooks");
		HSSFSheet sheet = workbook.createSheet(excel_date+"~"+excel_date2);
		sheet.setDefaultColumnWidth(30);
		CellStyle style = workbook.createCellStyle();
		Font font = workbook.createFont();
		font.setFontName("Arial");
		style.setFillForegroundColor(HSSFColor.BLUE.index);
		style.setFillPattern(CellStyle.SOLID_FOREGROUND);
		font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		font.setColor(HSSFColor.WHITE.index);
		style.setFont(font);
		
		HSSFRow header = sheet.createRow(0);
		//������ �� Ÿ��Ʋ;
		String[] str = {"�̸�", "��ٽð�", "��ٽð�", "�ٹ��ð�", "�޿�"};
		for(int i =0; i<str.length;i++){
			header.createCell(i).setCellValue(str[i]);
			header.getCell(i).setCellStyle(style);
		}
		int rowCount = 1;
		int timeres = 0;
		int payres = 0;
		//���� ������ ä��
		HSSFRow aRow;
		for (StaffVO aBook : list){
			aRow = sheet.createRow(rowCount++);
			aRow.createCell(0).setCellValue(aBook.getStaff_name());
			aRow.createCell(1).setCellValue(aBook.getWork_login());
			aRow.createCell(2).setCellValue(aBook.getWork_logout());
			aRow.createCell(3).setCellValue(aBook.getWork_time());
			aRow.createCell(4).setCellValue(aBook.getWork_time()* 10000);
			//total += aBook.getSell_cash();
			timeres += aBook.getWork_time();
			payres += aBook.getWork_time() * 10000;
		}
		rowCount++;
		aRow = sheet.createRow(rowCount);
		aRow.createCell(0).setCellValue("�հ� : ");
		aRow.createCell(1).setCellValue(excel_date+"~");
		aRow.createCell(2).setCellValue(excel_date2);
		aRow.createCell(3).setCellValue(timeres+"�ð�");
		aRow.createCell(4).setCellValue(payres+"��");
	
		//���䰴ü�� ���� �ٿ�ε� ���� Ÿ�԰� ���� �̸��� �����Ѵ�.
		response.setContentType("Application/Msexcel");
		response.setHeader("Content-Disposition", "attachment; filename="+excel_date+"~"+excel_date2+":"+staff_num+"_excel.xls;");
		
	}

	
}
