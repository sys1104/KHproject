<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time",cal);
	response.sendRedirect("../to/viewTime.jsp");  
	/* �����̷�Ʈ�� ������ �̵��� �ϸ� nullpointexception�� �߻��Ѵ� 
	viewTime.jsp���� ��ü�� ������ �� ��, ������ ���� �ʾ� null�� ����ְ�, ���� ��ü�� ó���� �� �� ���⶧���� ���ܰ� �߻��Ѵ�.
	
	*/
%>
<%-- <jsp:forward page = "/mar0330/to/viewTime.jsp" /> --%>

