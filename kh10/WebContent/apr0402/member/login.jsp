<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "util.CookieBox" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
		response.addCookie(CookieBox.createCookie("LOGIN","SUCCESS","/",-1));
		response.addCookie(CookieBox.createCookie("ID",id,"/",-1));
%>
<html>
<head><title>cookie �α��μ���</title></head>
<body>

�α��ο� �����߽��ϴ�.

</body>
</html>
<%
	} else {
%>
<script>
alert("�α��ο� �����߽��ϴ�.");
history.go(-1);
</script>
<%
	}
%>
	