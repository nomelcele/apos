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

//AbstractExcelView�� ��ӹ޾Ƽ� ����ϴµ�
public class ExcelBuilder extends AbstractExcelView{
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
		List<SalesCheckVO> list = (List<SalesCheckVO>) model.get("list");
		String excel_date = model.get("excel_date").toString();
		//List<ShowVO> listBooks = (List<ShowVO>) model.get("listBooks");
		HSSFSheet sheet = workbook.createSheet(excel_date);
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
		String[] str = {"��¥", "��ǰ��ȣ", "���Ű���ȣ", "�Ǹż���", "�Ǹž�"};
		for(int i =0; i<str.length;i++){
			header.createCell(i).setCellValue(str[i]);
			header.getCell(i).setCellStyle(style);
		}
		int rowCount = 1;
		int total = 0;
		//���� ������ ä��
		HSSFRow aRow;
		for (SalesCheckVO aBook : list){
			aRow = sheet.createRow(rowCount++);
			aRow.createCell(0).setCellValue(aBook.getSell_date());
			aRow.createCell(1).setCellValue(aBook.getSell_pronum());
			aRow.createCell(2).setCellValue(aBook.getSell_memnum());
			aRow.createCell(3).setCellValue(aBook.getSell_many());
			aRow.createCell(4).setCellValue(aBook.getSell_cash());
			total += aBook.getSell_cash();
		}
		rowCount++;
		aRow = sheet.createRow(rowCount);
		aRow.createCell(0).setCellValue("��¥ : ");
		aRow.createCell(1).setCellValue(excel_date);
		aRow.createCell(3).setCellValue("�Ǹ��Ѿ�");
		aRow.createCell(4).setCellValue(total);
	
		//���䰴ü�� ���� �ٿ�ε� ���� Ÿ�԰� ���� �̸��� �����Ѵ�.
		response.setContentType("Application/Msexcel");
		response.setHeader("Content-Disposition", "attachment; filename="+excel_date+"����_excel.xls;");
		
	}

	
}
