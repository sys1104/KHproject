<%@ page language="java" contentType="text/html; charset=EUC-KR"%>


<html>
<head><title>���̺� ���ڵ� ����</title></head>
<body>

<form action= "./insert.jsp" method="post" >
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name = "memberID" size="10"></td>
	<td>��ȣ</td>
	<td><input type="text" name= "password" size="10"></td>
</tr>
	
<tr>
	<td>�̸�</td>
	<td><input type="text" name="name" size="10"></td>
	<td>�̸���</td>
	<td><input type="text" name = "email" size="10"></td>
</tr>
<tr>
	<td colspan="4"><input type="submit" value="����"></td>
</tr>
</table>
</form>
</body>
</html>