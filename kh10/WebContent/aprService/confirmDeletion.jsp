<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<html>
<head>
<title>���� �޼��� ���� Ȯ��</title>
</head>
<body>

<form action ="deleteMessage.jsp" method="post" >
<input type="hidden" name="messageId" value="<%= request.getParameter("messageId") %>"/>
�޼����� �����Ͻ÷��� ��ȣ�� �Է��ϼ���:<br/>
��ȣ : <input type="password" name="password"/><br/>
<input type="submit" value="�޼��� �����ϱ�" />
</form>
</body>
</html>