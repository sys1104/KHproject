package soldesk.el;

import java.text.SimpleDateFormat;
import java.util.Date;;

public class DateUtil {
	private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:dd");
	
	//��¥����ϴ� format�޼��� ����
	public static String format(Date date) {
		return formatter.format(date);
	}

}
