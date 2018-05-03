<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page errorPage ="errorView.jsp" %>
<%@ page import = "kh.service.DeleteMessageService" %>
<%@ page import = "kh.service.InvalidMessagePasswordException" %>

<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassword = false;
	
	try {
		DeleteMessageService deleteService = DeleteMessageService.getInstance();
		deleteService.deleteMessage(messageId, password);
	} catch(InvalidMessagePasswordException ex) {
		invalidPassword = true;
	}
	
%>

<html>
<head>
<title>���� �޼��� ������</title>
</head>
<body>
<% if(!invalidPassword) { %>
�޼����� �����Ͽ����ϴ�.
<% } else { %>
�Է��� ��ȣ�� �ùٸ��� �ʽ��ϴ�. ��ȣ�� Ȯ�����ּ���.
<% } %>
<br/>
<a href="list.jsp">[��� ����]</a>

</body>
</html>