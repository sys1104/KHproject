<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�۾���</title></head>
<body>

<form action="<c:url value='write.jsp'/>" method="post">
���� : <input type="text" name="title" size="20"/><br/>
�ۼ��� : <input type="text" name="writerName" /><br/>
�۾�ȣ : <input type="password" name="password" /><br/>
�۳��� : <br/>
<textarea name="content" rows="5" cols="40"></textarea>
<br/>
<input type="submit" value="����" />

</form>

</body>
</html>