<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>INFO</title></head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>��ǰ��ȣ</td> <td>XXXX</td>
</tr>
<tr>
	<td>����</td> <td>10,000��</td>
</tr>
</table>

<jsp:include page = "infoSub.jsp" flush="false" >
	<jsp:param name="type" value="B" />
</jsp:include>

</body>
</html>