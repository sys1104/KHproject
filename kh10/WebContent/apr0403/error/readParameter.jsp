<%@ page language="java" contentType="text/html; charset=EUC-KR"%> 
<%@ page errorPage = "/apr0403/error/viewErrorMessage.jsp" %> <%-- 
<%@ page errorPage = "/apr0403/error/error404.jsp" %> 
<%@ page errorPage = "/apr0403/error/errorNullPointer.jsp" %>  --%>
<html>
<head><title>�Ķ���� ���</title></head>
<body>

name �Ķ���� �� <%= request.getParameter("name").toUpperCase() %>

</body>
</html>
<!--
���� ���� �������� ���̰� 513 ����Ʈ���� �۴ٸ�,
���ͳ� �ͽ��÷η��� �� �������� ����ϴ� ���� �������� ������� �ʰ�
��ü������ �����ϴ� 'HTTP ���� �޽���' ȭ���� ����� ���̴�.
���� ���� �������� ���̰� 513 ����Ʈ���� ������
���� �������� ������ ���ͳ� �ͽ��÷η������� �ùٸ��� ��µǱ� ���Ѵٸ�,
���� ����� �� �ּ��� ���� ������ ���Խ��Ѽ�
���� �������� ���̰� 513 ����Ʈ �̻��� �ǵ��� �� �־�� �Ѵ�.
����� �� �ּ��� 456����Ʈ�̴�.
-->


