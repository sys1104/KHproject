<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLDecoder" %>

<html>
<head><title>��Ű ��� path1</title></head>
<body>
��Ű ���<br>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0) {
		for(int i=0;i<cookies.length;i++) {
%>
	<%= cookies[i].getName() %> = 
	<%= URLDecoder.decode(cookies[i].getValue(),"euc-kr") %><br>
<%			
		}
	} else {
%>
��Ű�� �������� �ʽ��ϴ�.
<%
	}
%>

</body>

</html>