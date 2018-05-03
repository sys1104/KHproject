<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../MVC/color.jspf" %>


<html>
<head>
<title>회원정보수정</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript">
<!--
function checkIt() {
	var userinput = eval("document.userinput");
	
	if(!userinput.password.value) {
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(userinput.passwd.value != userinput.passwd2.value) {
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
	if(!userinput.username.value) {
		alert("사용자 이름을 입력하세요");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value) {
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
}
-->

</script>
</head>

<body bgcolor="${bodyback_c}">
<form method="post" action="/kh10/aprLogon/modifyPro.do" name="userinput" onsubmit="return checkIt()">
<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
<tr>
	<td colspan="2" height="39" bgcolor="${title_c}" align="center">
		<font size="+1"><b>회원 정보수정</b></font>
	</td>
</tr>
<tr>
	<td colspan="2" class="normal" align="center">회원의 정보를 수정합니다</td>
</tr>
<!-- 아이디 입력칸 -->
<tr>
	<td width="200" bgcolor="${value_c}"><b>아이디 입력</b></td>
	<td width="400" bgcolor="${value_c}">&nbsp;</td>
</tr>

<tr>
	<td width="200">사용자 ID</td>
	<td width="400">${member.id}</td> <!-- 수정폼이니까 원래 있던 데이터를 보여줘야 한다 -->
		<input type="hidden" name="id" value="${sessionScope.memId}">	
</tr>	
<tr>
	<td width="200">비밀번호</td>
	<td width="400">
		<input type="password" name="passwd" size="10" maxlength="10" value="${member.passwd}">	
	</td>
</tr>	
<tr>
	<td width="200" bgcolor="${value_c}"><b>개인정보 입력</b></td>
	<td width="400" bgcolor="${value_c}">&nbsp;</td>
</tr>
<tr>
	<td width="200">사용자 이름</td>
	<td width="400"> 
		<input type="text" name="name" size="15" maxlength="20" value="${member.name}">	
	</td>
</tr>
<tr>
	<td width="200">주민등록번호</td>
	<td width="400"> 
		${member.jumin1}-${member.jumin2}
	</td>
</tr>
<tr>
	<td width="200">E-MAIL</td>
	<td width="400">
		<!-- 이메일주소가 없다면 아무것도 출력안함 -->
		<c:if test="${empty member.email}">
			<input type="text" name="email" size="40" maxlength="30" >
		</c:if>
		<!-- 이메일주소가 있다면 그 정보를 출력함-->
		<c:if test="${!empty member.email}"	>
			<input type="text" name="email" size="40" maxlength="30" value="${member.email}">
		</c:if>	
	</td>
</tr>
<tr>	
	<td colspan="2" align="center" bgcolor="${value_c}">
		<input type="submit" name="modify" value="수    정">
		<input type="button" value="취    소" onclick="document.location.href='/kh10/aprLogon/main.do'">
	</td>
</tr>	
</table>
</body>
</html>