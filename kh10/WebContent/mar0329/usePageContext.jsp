<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>pageContext �⺻��ü</title></head>
<body>

<%
	HttpServletRequest httpRequest =(HttpServletRequest)pageContext.getRequest();
%>

request �⺻ ��ü�� pageContext.getRequest()�� ���Ͽ���:

<%= request == httpRequest  %>
<br>
pageContext.getOut()�޼��带 ����� ������ ���:

<% pageContext.getOut().println("�ȳ��ϼ���!"); %>


</body>
</html>