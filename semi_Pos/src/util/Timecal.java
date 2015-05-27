package util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class Timecal {

public String getMONTH(int month){
	Calendar cal = new GregorianCalendar(Locale.KOREA);
    cal.setTime(new Date());
    //cal.add(Calendar.YEAR, -1); // 1년을 더한다.
    cal.add(Calendar.MONTH, month); // 한달을 더한다. 
   // cal.add(Calendar.DAY_OF_YEAR, 1); // 하루를 더한다. 
    //cal.add(Calendar.HOUR, 1); // 시간을 더한다
     
    SimpleDateFormat fm = new SimpleDateFormat(
            "yyyy-MM-dd");
    String strDate = fm.format(cal.getTime());
    System.out.println(strDate);
	return strDate;
	
}
//	public static void main(String[] args) {
//		Time t= new Time();
//		String str = t.getMONTH(-6);
//		System.out.println(str);
//	}
}
