<%@ page contentType="text/html; charset=euc-kr" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
<html>
<head><title>INFO</title></head>
<body>
include �� name �Ķ���� ��: <%= request.getParameter("name") %>

<hr>

<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="�ֹ���" />
</jsp:include>

<hr/>

include �� name �Ķ���� ��: <%= request.getParameter("name") %>

</body>
</html>