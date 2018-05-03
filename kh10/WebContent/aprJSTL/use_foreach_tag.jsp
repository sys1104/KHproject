<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "java.util.HashMap" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	HashMap<String, Object> mapData = new HashMap<String, Object>();
	mapData.put("name", "Soldesk");
	mapData.put("today", new java.util.Date());
%>
<c:set var ="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<c:set var = "map" value="<%=mapData %>" />

<html>
<head>
<title>forEach �±�</title>
</head>
<body>
<h4>1���� 100���� Ȧ���� ��</h4>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum+i}"/>
</c:forEach>
��� = ${sum }

<hr>

<h4>������ : 12��</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>12* ${i} = ${12 * i }
</c:forEach>
</ul>

<hr>

<h4>int�� �迭</h4>

<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
	${status.index}-${status.count}-[${i}] <br/>
</c:forEach>

<hr>

<h4>Map</h4>

<c:forEach var="i" items="${map}">
	${i.key} = ${i.value}<br>
</c:forEach>

</body>
</html>