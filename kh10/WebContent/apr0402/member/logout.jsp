<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "util.CookieBox" %>
<%
	response.addCookie(CookieBox.createCookie("LOGIN","","/",0));
	response.addCookie(CookieBox.createCookie("ID","","/",0));
%>
<html>
<head><title>cookie �α׾ƿ�</title></head>
<body>
�α׾ƿ� �Ͽ����ϴ�.
</body>
</html>