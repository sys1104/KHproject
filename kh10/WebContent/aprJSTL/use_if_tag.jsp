<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>if �±�</title></head>
<body>
<c:if test="true">
������ ����<br>
</c:if>

<c:if test="${param.name=='bk'}">
name �Ķ������ ���� ${param.name}�Դϴ�.<br>
</c:if>

<c:if test="${16 < param.age }">
����� ���̴� 16�� �̻��Դϴ�.
</c:if>

</body>
</html>

<!-- URL�� ?age=22 ?name=bk ?age=22&name=bk �� �Է��ؾ� �����Ѵ� -->