<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="member" scope="request" class="kh.member.MemberInfo"></jsp:useBean>

<html>
<head><title>�λ縻</title></head>
<body>

<%= member.getName() %> (<%= member.getId() %>) ȸ����
������ �ð�~
</body>
</html>