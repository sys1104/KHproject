<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>�ɼ� ���� ȭ��</title></head>
<body>

<form action="<%= request.getContextPath()%>/mar0330/view.jsp">

���� ���� ������ ���� : 
	<select name="code">
		<option value="A"> A page</option>
		<option value="B"> B page</option>
		<option value="C"> C page</option>
	</select>
	
	<input type="submit" value="�̵�">
</form>
</body>
</html>