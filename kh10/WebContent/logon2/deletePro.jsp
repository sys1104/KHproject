<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../MVC/color.jspf" %>

<html>
<head>
<title>ȸ��Ż��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="${bodyback_c}">

<!-- ��й�ȣ�� �����Ҷ��� ���� -->
<c:if test="${check==1}">
<c:remove var="memId" scope="session"/>

<form method="post" action="/kh10/aprLogon/main.do" name="userinput">
<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
	<tr bgcolor="${title_c}">
		<td height="39" align="center">
			<font size="+1"><b>ȸ�������� �����Ǿ����ϴ�.</b></font>
		</td>
	</tr>
	<tr bgcolor="${value_c}">
		<td align="center">
			<p>����...�߰��� ȸ����......</p>
			<meta http-equiv="Refresh" content="5;url=/kh10/aprLogon/main.do">
		</td>
	</tr>		
	<tr bgcolor="${value_c}">
		<td align="center">
			<input type="submit" value="Ȯ��">
		</td>
	</tr>

</table>
</form> 
</c:if>

<!-- ��й�ȣ�� �������� �������� ���� -->
<c:if test="${check==0}">
<script>
	alert("��й�ȣ�� ���� �ʽ��ϴ�");
	history.go(-1);
</script>
</c:if>
</body>
</html>