<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<html>
<head>
<title>ǥ������� ��뿹��2</title>
</head>
<body>
<h3>ǥ������� ��뿹��2 - �Ķ���Ͱ� ó��</h3>
<p>
<form action="eLEx2.jsp" method="post">
	�̸� : <input type="text" name ="name" value="${param.name}">
		  <input type="submit" value="Ȯ��">	
</form>
<p>
�̸��� : ${param.name} �Դϴ�.
<%--  ${param.name}��  <%=request.getParameter("name") %>�� Ǯ�� �� �ڵ��̴�. --%>
</body>
</html>