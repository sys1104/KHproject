package ssol.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soldesk.logon.LogonDBBean;
import ssol.action.CommandAction;

public class LoginProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean dbPro = LogonDBBean.getInstance();
		int check = dbPro.userCheck(id, passwd);
		
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);
		
		return "/logon2/loginPro.jsp";
		
	}

}
