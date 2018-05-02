<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>서비스 에러</title>
</head>
<body>
일시적인 문제로 인해 서비스를 사용할 수 없습니다.<br/>
서비스 사용에 불편을 드려 죄송합니다.
<%
	exception.printStackTrace();
%>

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