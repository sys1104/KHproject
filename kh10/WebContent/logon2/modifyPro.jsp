<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>ȸ����������</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="${bodyback_c}">
<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
	<tr bgcolor="${title_c}">
		<td height="39" align="center">
			<font size="+1"><b>ȸ�������� �����Ǿ����ϴ�.</b></font>
		</td>
	</tr>	
	<tr>
		<td bgcolor="${value_c}" align="center">
			<p> �Է��Ͻ� ������ ������ �Ϸ�Ǿ����ϴ�.</p>
		</td>
	</tr>	
	<tr>
		<td bgcolor="${value_c}" align="center">
		<form>
			<input type="button" value="��������" onclick="document.location.href='/kh10/aprLogon/main.do'">		
		</form>
		5���Ŀ� �������� �̵��մϴ�.
		<meta http-equiv="Refresh" content="5;url=/kh10/aprLogon/main.do">
		</td>	
	</tr>
</table>
</body>
</html>