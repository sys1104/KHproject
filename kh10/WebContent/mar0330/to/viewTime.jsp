<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.util.Calendar" %>
<html>
<head><title>���� �ð�</title></head>
<body>
<%
	Calendar cal = (Calendar) request.getAttribute("time");
%>

���� �ð��� <%= cal.get(Calendar.HOUR) %> ��
	     <%= cal.get(Calendar.MINUTE) %> ��
	     <%= cal.get(Calendar.SECOND) %> �� �Դϴ�.
</body>
</html>