<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>Ŭ���� ���</title></head>
<body>
<%
	java.util.Calendar cal = java.util.Calendar.getInstance();
%>
������
	<%=cal.get(java.util.Calendar.YEAR) %>��
	<%=cal.get(java.util.Calendar.MONTH)+1 %>��
	<%=cal.get(java.util.Calendar.DATE) %>��
�Դϴ�~!~!

</body>
</html>