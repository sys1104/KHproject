<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>timeZone �±� ���</title></head>
<body>

�ѱ��� ����ð�<br>
<c:set var="now" value="<%=new java.util.Date() %>"/>
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
<br>
<p>
�Ƹ���Ƽ���� ����ð�<br>
<fmt:timeZone value="America/Argentina/Buenos_Aires">
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone>

</body>
</html>