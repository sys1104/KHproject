<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
<head><title>ȸ������ �Է� ��</title></head>
<body>

<form action="<%= request.getContextPath() %>/apr0403/processJoining.jsp" method="post">
<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>���̵�</td>
	<td colspan="3"><input type="text" name="id" size="10"></td>
</tr>
<tr>
	<td>�̸�</td>
	<td><input type="text" name="name" size="5"></td>
	<td>�̸���</td>
	<td><input type="text" name="email" size="15"></td>
</tr>
<tr>
	<td>�ּ�</td>
	<td colspan="3"><input type="text" name="address" size="30"></td>
</tr>
<tr>
	<td colspan="4" align="center">
	<input type="submit" value="ȸ������">
	</td>
</tr>

</table>
</form>
</body>
</html>