<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	String name = (String)session.getAttribute("NAME");
%>
<html>
<head><title>���ǿ��� ���� ��������</title></head>
<body>
���ǿ��� ������ ������ <br>
memberId�� <%=memberId %><br>
name�� <%=name %>�Դϴ�.


</body>
</html>