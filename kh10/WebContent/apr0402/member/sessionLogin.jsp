<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
		session.setAttribute("MEMBERID",id);
%>

<html>
<head><title>�α��μ���</title></head>
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