<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- �������� �Է��� ��й�ȣ�� ������ ��쿡 ���� -->
<c:if test="${check==1}">
	<meta http-equiv="Refresh" content="0;url=/kh10/MVC/list.do?pageNum=${pageNum}">
</c:if>

<!-- �������� �Է��� ��й�ȣ�� ���� �ٸ� ��쿡 ���� -->
<c:if test="${check==0}">
	��й�ȣ�� �ٸ��ϴ�.
	<br>
	<a href="javascript:history.go(-1)">[�ۼ��� ������ ���ư���]</a>
</c:if>