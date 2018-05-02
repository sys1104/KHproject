<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../MVC/color.jspf" %>

<html>
<head>
<title>ID 중복확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">

<!-- 이미 다른유저가 사용하고 있는 아이디일때의 처리 -->
<c:if test="${check == 1}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr bgcolor="${title_c}">
		<td height="39">${id} 는 이미 사용중인 아이디입니다.</td>
	</tr>
</table>
<form name="checkForm" method="post" action="/kh10/aprLogon/confirmId.do">
<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td bgcolor="${value_c}" align="center">
		다른 아이디를 선택하세요.<p>
		<input type="text" size="10" maxlength="12" name="id">
		<input type="submit" value="ID중복확인">
		</td>
	</tr>
</table>
</form>
</c:if>

<!-- 사용할 수 있는 아이디일때의 처리 -->
<c:if test="${check == -1}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr bgcolor="${title_c}">
		<td align="center">
		<p>입력하신 ${id} 는 사용하실 수 있는 ID 입니다.</p>
		<input type="button" value="닫기" onClick="setid()">
		</td>
	</tr>
</table>
</c:if>
</body>
</html>

<script language="javascript">
<!--
function setid() {
	opener.document.userinput.id.value="${id}";
	self.close();	
}
-->
</script>
