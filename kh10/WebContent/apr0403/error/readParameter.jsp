<%@ page language="java" contentType="text/html; charset=EUC-KR"%> 
<%@ page errorPage = "/apr0403/error/viewErrorMessage.jsp" %> <%-- 
<%@ page errorPage = "/apr0403/error/error404.jsp" %> 
<%@ page errorPage = "/apr0403/error/errorNullPointer.jsp" %>  --%>
<html>
<head><title>파라미터 출력</title></head>
<body>

name 파라미터 값 <%= request.getParameter("name").toUpperCase() %>

</body>
</html>
<!--
만약 에러 페이지의 길이가 513 바이트보다 작다면,
인터넷 익스플로러는 이 페이지가 출력하는 에러 페이지를 출력하지 않고
자체적으로 제공하는 'HTTP 오류 메시지' 화면을 출력할 것이다.
만약 에러 페이지의 길이가 513 바이트보다 작은데
에러 페이지의 내용이 인터넷 익스플로러에서도 올바르게 출력되길 원한다면,
응답 결과에 이 주석과 같은 내용을 포함시켜서
에러 페이지의 길이가 513 바이트 이상이 되도록 해 주어야 한다.
참고로 이 주석은 456바이트이다.
-->


