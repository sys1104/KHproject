<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page errorPage = "errorView.jsp" %>
<%@ page import = "kh.service.Message" %>
<%@ page import = "kh.service.WriteMessageService" %>

<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id = "message" class="kh.service.Message">
	<jsp:setProperty name = "message" property="*" />
</jsp:useBean>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>


<html>
<head>
<title>���� �޼��� ����</title>
</head>
<body>
���Ͽ� �޼����� ������ϴ�.
<br/>
<a href="list.jsp">[��Ϻ���]</a>
</body>
</html>