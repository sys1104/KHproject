<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="color.jspf" %>

<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">
<center><b>�۸��(��ü ��: ${count})</b>
<table width="700">
	<tr>
		<td align="right" bgcolor="${value_c}" >	
			<a href="/kh10/MVC/writeForm.do">�۾���</a>
		</td>
	</tr>
</table>

<!-- �Խñ��� �ϳ��� �������� ó������ -->
<c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center">
		�Խ��ǿ� ����� ���� �����ϴ�.
		</td>
	</tr>
</table>
</c:if>

<!-- �Խñ��� �������� ó������ -->
<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
	<tr height="30" bgcolor="${value_c}">
		<td align="center" width="50">�� ȣ</td>
		<td align="center" width="250">��   �� </td>
		<td align="center" width="100">�ۼ���</td>
		<td align="center" width="150">�ۼ���</td>
		<td align="center" width="50">�� ȸ</td>
		<td align="center" width="100">IP</td>
	</tr>
	<c:forEach var="article" items="${articleList}">
	<tr height="30">
		<!-- ��ȣ ��� -->
		<td align="center" width="50">
			<c:out value="${number}"/>
			<c:set var="number" value="${number -1}"/>
		</td>
		<!-- ���� ��� -->
		<td width="250">
			<!-- ���� ����̶�� -->
			<c:if test="${article.re_level > 0}">
			<img src = "images/level.gif" width="${5* article.re_level}" height="16">
			<img src = "images/re.gif">
			</c:if>
			<!-- ����� �ƴ϶�� -->
			<c:if test="${article.re_level == 0}">
			<img src = "images/level.gif" width="${5* article.re_level}" height="16">
			</c:if>
			
			<a href="/kh10/MVC/content.do?num=${article.num}&pageNum=${currentPage}">
			${article.subject}
			</a>
			
			<!-- ��ȸ���� 20 �̻��̶�� hot�� �������� ����Ѵ� -->
			<c:if test="${article.readcount >=20}">
			<img src="images/hot.gif" border="0" height="16">
			</c:if>	
		</td>
		<!-- �ۼ��� ��� -->
		<td align="center" width="100">
			<a href="mailto:${article.email}">${article.writer}</a>
		</td>
		<!-- �ۼ��� ��� -->
		<td align="center" width="150"> ${article.reg_date}</td>
		<!-- ��ȸ�� ��� -->
		<td align="center" width="50"> ${article.readcount}</td>
		<!-- ip ��� -->
		<td align="center" width="100"> ${article.ip}</td>
	</tr>				
	</c:forEach>
</table>
</c:if>

<!-- �Խñ��� ������ ����¡�۾��ϱ� -->
<c:if test="${count > 0}">
	<c:set var="pageCount" value="${count/pageSize + (count % pageSize == 0? 0:1)}"/>
	<c:set var="pageBlock" value="${10}"/>
	<fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true"/>
	<c:set var="startPage" value="${result * 10+1}" />
	<c:set var="endPage" value="${startPage + pageBlock-1}"/>
	<c:if test="${endPage > pageCount}">
		<c:set var="endPage" value="${pageCount}"/>
	</c:if>
	
	<!-- ������������ �Ѿ�� ��ũ -->
	<c:if test="${startPage > 10}">
		<c:if test='${search.equals("") || search=null}'>
			<a href="/kh10/MVC/list.do?pageNum=${startPage - 10}">[����]</a>
		</c:if>
		<c:if test="${search != null}">
			<a href="/kh10/MVC/list.do?pageNum=${startPage - 10}&search=${search}&searchn=${searchn}">[����]</a>
		</c:if>
	</c:if>
	
	<!-- ������ ���� ������ ����¡ �� ������ ��ȣ ��ũ -->
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<c:if test='${search.equals("") || search=null}' >
			<a href="/kh10/MVC/list.do?pageNum=${i}">[${i}]</a>
		</c:if>
		<c:if test="${search != null}">
			<a href="/kh10/MVC/list.do?pageNum=${i}&search=${search}&searchn=${searchn}">[${i}]</a>
		</c:if>
		
	</c:forEach>
	
	<!-- ������������ �Ѿ�� ��ũ -->
	<c:if test="${endPage < pageCount}">
		<c:if test='${search.equals("") || search=null}' >
			<a href="/kh10/MVC/list.do?pageNum=${startPage + 10}">[����]</a>
		</c:if>
		<c:if test="${search != null}">
			<a href="/kh10/MVC/list.do?pageNum=${startPage + 10}&search=${search}&searchn=${searchn}">[����]</a>
		</c:if>	
	</c:if>

</c:if>

<!-- �˻� �� ����� -->
<p>
<form>
<select name="searchn">
	<option value="0">�ۼ���</option>
	<option value="1">����</option>
	<option value="2">����</option> 
</select>

<input type="text" name="search" size="15" maxlength="50"/> 
<input type="submit" value="�˻�"/>
</form>

</center>
</body>
</html>