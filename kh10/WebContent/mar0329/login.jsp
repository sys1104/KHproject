<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String id= request.getParameter("memberId");
	if(id.equals("khyy")) {
		response.sendRedirect("/kh10/mar0326/now.jsp");
	}
	else {
%>
<html>
<head><title>�α��ο� ����</title></head>
<body>
���̵� khyy�� �ƴմϴ�.
</body>
</html>
<%
	}
%>
	