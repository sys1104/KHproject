<%@ page contentType="text/html; charset=euc-kr" %>
<%-- <%@ page buffer="1kb" autoFlush="false" %> --%>
<%@ page buffer="1kb" autoFlush="true" %>
<html>
<head><title>autoFlush �Ӽ��� false ����</title></head>
<body>
<% for(int i=0;i<1000;i++) { %>
1234
<% } %>

</body>
</html>