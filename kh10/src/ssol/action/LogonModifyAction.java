package ssol.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ssol.action.CommandAction;

public class LogonModifyAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/logon2/modify.jsp";
	}

}
