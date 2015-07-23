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

//AbstractExcelView을 상속받아서 사용하는데
public class ExcelBuilder2 extends AbstractExcelView{
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
		//엑셀의 셀 타이틀;
		String[] str = {"이름", "출근시간", "퇴근시간", "근무시간", "급여"};
		for(int i =0; i<str.length;i++){
			header.createCell(i).setCellValue(str[i]);
			header.getCell(i).setCellStyle(style);
		}
		int rowCount = 1;
		int timeres = 0;
		int payres = 0;
		//셀의 내용을 채움
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
		aRow.createCell(0).setCellValue("합계 : ");
		aRow.createCell(1).setCellValue(excel_date+"~");
		aRow.createCell(2).setCellValue(excel_date2);
		aRow.createCell(3).setCellValue(timeres+"시간");
		aRow.createCell(4).setCellValue(payres+"원");
	
		//응답객체로 부터 다운로드 받을 타입과 파일 이름을 설정한다.
		response.setContentType("Application/Msexcel");
		response.setHeader("Content-Disposition", "attachment; filename="+excel_date+"~"+excel_date2+":"+staff_num+"_excel.xls;");
		
	}

	
}
