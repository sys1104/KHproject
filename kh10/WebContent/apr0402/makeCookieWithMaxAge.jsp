<%@ page contentType="text/html; charset=euc-kr" %>
<%
	Cookie cookie = new Cookie("onet", "30sec");
	cookie.setMaxAge(30*1);
	response.addCookie(cookie);
%>
<html>
<head><title>��Ű��ȿ �ð�����</title></head>
<body>

��ȿ�ð��� 30���� onet��Ű ����
</body>
</html>