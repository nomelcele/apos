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

//AbstractExcelView을 상속받아서 사용하는데
public class ExcelBuilder extends AbstractExcelView{
	// excelView 뷰를 찾으면, 이것을 현재클래스 ExcelBuilder가
	// AbstractExcelView를 상속했기 때문에 이것은 뷰이다.
	
	
	//디스패쳐서블릿 -> [view]jsp (model) : forward ///// model을 준다
	//디스패쳐가 이 메서드를 호출해준다
	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// HSSF 마이크로 소프트의 엑셀 전용 클래스
		// 디스패쳐서블릿 에 의해서 Model을 받는다
		// ${listBooks}와 같은거
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
		//엑셀의 셀 타이틀;
		String[] str = {"날짜", "상품번호", "구매고객번호", "판매수량", "판매액"};
		for(int i =0; i<str.length;i++){
			header.createCell(i).setCellValue(str[i]);
			header.getCell(i).setCellStyle(style);
		}
		int rowCount = 1;
		int total = 0;
		//셀의 내용을 채움
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
		aRow.createCell(0).setCellValue("날짜 : ");
		aRow.createCell(1).setCellValue(excel_date);
		aRow.createCell(3).setCellValue("판매총액");
		aRow.createCell(4).setCellValue(total);
	
		//응답객체로 부터 다운로드 받을 타입과 파일 이름을 설정한다.
		response.setContentType("Application/Msexcel");
		response.setHeader("Content-Disposition", "attachment; filename="+excel_date+"정산_excel.xls;");
		
	}

	
}
