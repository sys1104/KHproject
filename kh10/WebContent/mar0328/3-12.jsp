<%@ page contentType ="text/html; charset=euc-kr" %>
<%! 
	public int add(int a, int b) {
		int c=a+b;
		return c;
	}
	public int sub(int a, int b) {
		int c=a-b;
		return c;
	}
%>
<html>
<head><title>��ũ��Ʈ������ ����� ����ϱ�</title></head>
<body>
<%
	int value1=3;
	int value2=4;
	
	int addResult = add(value1, value2);
	int subResult = sub(value1, value2);
%>

<%= value1 %> + <%=value2 %> = <%= addResult %>
<br>
<%= value1 %> + <%=value2 %> = <%= subResult %>

</body>
</html>