<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	/* cookie1�� �������� �����ϰ� ��ü�����Ͽ� Ŭ�󿡰� ���� */
	Cookie cookie1 = new Cookie("id","madvirus");
	cookie1.setDomain(".madvirus.net");
	response.addCookie(cookie1);
	
	/* cookie�� �������� �������� �ʰ� ��ü�����Ͽ� Ŭ�󿡰� ���� */
	Cookie cookie2 = new Cookie("only", "onlycookie");
	response.addCookie(cookie2);
	
	/* cookie3�� �������� �����ϰ� ��ü�����Ͽ� Ŭ�󿡰� ���� */
	Cookie cookie3 = new Cookie("invalid","invalidcookie");
	cookie3.setDomain("javacan.tistory.com");
	response.addCookie(cookie3);	
%>
<html>
<head><title>��Ű����</title></head>
<body>
������ ���� ��Ű�� �����߽��ϴ�.<br>
<%= cookie1.getName()  %> = <%=cookie1.getValue() %>
[<%= cookie1.getDomain() %>]
<br>
<%= cookie2.getName()  %> = <%=cookie2.getValue() %>
[<%= cookie2.getDomain() %>]
<br>
<%= cookie3.getName()  %> = <%=cookie3.getValue() %>
[<%= cookie3.getDomain() %>]
<br>

</body>
</html>

<!-- 
����ȭ�鿡���� onlycookie�� ��Ÿ����.
 �ٸ� ��Ű�� �������� �ٸ��⶧���� ������ ������ Ŭ���̾�Ʈ�� ���� �ʴ´� -->