<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>INFO</title></head>
<body>

body_sub���� name �Ķ���� ��: <%= request.getParameter("name") %>
<br/>
name �Ķ���� �� ��� : 
<ul>
<%
	String[] names = request.getParameterValues("name");
	for(String name : names) {
%>
	<li> <%= name %> </li>
<%
	}
%>
</ul>
</body>
</html>

<%--urlâ�� ?name=AIG �� �Է��ϸ� name�� �ϳ� �� �߰��ȴ�. --%>