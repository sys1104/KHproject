<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�ð��� ���</title></head>
<body>
<c:forEach var="id" items="<%=java.util.TimeZone.getAvailableIDs() %>"> <!-- ����� �迭�� ���Ϲ޴´� -->
	${id}<br>
</c:forEach>
</body>
</html>