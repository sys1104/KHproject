<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../MVC/color.jspf" %>


<html>
<head>
<title>ȸ����������</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript">
<!--
function checkIt() {
	var userinput = eval("document.userinput");
	
	if(!userinput.password.value) {
		alert("��й�ȣ�� �Է��ϼ���");
		return false;
	}
	if(userinput.passwd.value != userinput.passwd2.value) {
		alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
		return false;
	}
	if(!userinput.username.value) {
		alert("����� �̸��� �Է��ϼ���");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value) {
		alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
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
		<font size="+1"><b>ȸ�� ��������</b></font>
	</td>
</tr>
<tr>
	<td colspan="2" class="normal" align="center">ȸ���� ������ �����մϴ�</td>
</tr>
<!-- ���̵� �Է�ĭ -->
<tr>
	<td width="200" bgcolor="${value_c}"><b>���̵� �Է�</b></td>
	<td width="400" bgcolor="${value_c}">&nbsp;</td>
</tr>

<tr>
	<td width="200">����� ID</td>
	<td width="400">${member.id}</td> <!-- �������̴ϱ� ���� �ִ� �����͸� ������� �Ѵ� -->
		<input type="hidden" name="id" value="${sessionScope.memId}">	
</tr>	
<tr>
	<td width="200">��й�ȣ</td>
	<td width="400">
		<input type="password" name="passwd" size="10" maxlength="10" value="${member.passwd}">	
	</td>
</tr>	
<tr>
	<td width="200" bgcolor="${value_c}"><b>�������� �Է�</b></td>
	<td width="400" bgcolor="${value_c}">&nbsp;</td>
</tr>
<tr>
	<td width="200">����� �̸�</td>
	<td width="400"> 
		<input type="text" name="name" size="15" maxlength="20" value="${member.name}">	
	</td>
</tr>
<tr>
	<td width="200">�ֹε�Ϲ�ȣ</td>
	<td width="400"> 
		${member.jumin1}-${member.jumin2}
	</td>
</tr>
<tr>
	<td width="200">E-MAIL</td>
	<td width="400">
		<!-- �̸����ּҰ� ���ٸ� �ƹ��͵� ��¾��� -->
		<c:if test="${empty member.email}">
			<input type="text" name="email" size="40" maxlength="30" >
		</c:if>
		<!-- �̸����ּҰ� �ִٸ� �� ������ �����-->
		<c:if test="${!empty member.email}"	>
			<input type="text" name="email" size="40" maxlength="30" value="${member.email}">
		</c:if>	
	</td>
</tr>
<tr>	
	<td colspan="2" align="center" bgcolor="${value_c}">
		<input type="submit" name="modify" value="��    ��">
		<input type="button" value="��    ��" onclick="document.location.href='/kh10/aprLogon/main.do'">
	</td>
</tr>	
</table>
</body>
</html>