<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("�ֹ���","euc-kr"));
	response.addCookie(cookie);
%>
<html>
<head><title>��Ű����</title></head>
<body>

<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %>"
</body>
</html>