<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "util.CookieBox" %>
<%
	CookieBox cookieBox = new CookieBox(request);
	boolean login = cookieBox.exists("LOGIN") && cookieBox.getValue("LOGIN").equals("SUCCESS");
%>
<html>
<head><title>cookie �α��� ���� �˻�</title></head>
<body>

<%
	if(login) {
%>
���̵� "<%= cookieBox.getValue("ID") %>"�� �α��� �� ����
<%
	}else {
%>
�α������� ���� ����
<%
	}
%>
</body>
</html>