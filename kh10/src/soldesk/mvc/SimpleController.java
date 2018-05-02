package soldesk.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {
	//1�ܰ� ��û�ޱ�
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//2�ܰ� ��û�ľ�, request ��ü�κ��� ������� ��û�� �ľ��ϴ� �ڵ�
		String type = request.getParameter("type");
		//3�ܰ� ��û�� ����� ����, ����ڿ� ��û�� ���� �˸´� �ڵ带 ����
		Object resultObject = null;
		if(type==null || type.equals("greeting")) {
			resultObject = "�ȳ��ϼ���";
		}
		else if(type.equals("date")) {
			resultObject = new java.util.Date();
		}
		else {
			resultObject = "Invalid Type";
		}
		
		//4�ܰ� request�� session�� ó������� ����
		request.setAttribute("result", resultObject);
		
		//5�ܰ� requestDispatcher�� ����Ͽ� �˸��� ��� ������
		RequestDispatcher dispatcher = request.getRequestDispatcher("/aprMVC_0501/simpleView.jsp");
		dispatcher.forward(request, response);
		
	}

}
