<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check==1}">
	<c:set var="memId" value="${id}" scope="session"/>
	<meta http-equiv="Refresh" content="0;url="/kh10/aprLogon/main.do"/>
</c:if>
<c:if test="${check==0}">
	<script>
		alert("��й�ȣ�� ���� �ʽ��ϴ�.");
		history.go(-1);
	</script>	
</c:if>
<c:if test="${check==-1}">
	<script>
		alert("���̵� ���� �ʽ��ϴ�.");
		history.go(-1);
	</script>
</c:if>