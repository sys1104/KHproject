<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="memberInfo" class="kh.member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*"/>
<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"/> 

<html>
<head><title>����</title></head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>���̵�</td>
	<td><%=memberInfo.getId() %></td>
	<td>��ȣ</td>
	<%--  <td><jsp:getProperty name="memberInfo" property="password"/></td>  --%>
	 <td><%=memberInfo.getPassword() %> 
</tr>
<tr>
	<td>�̸�</td>
	<td><%=memberInfo.getName() %></td>
	<td>�̸���</td>
	<td><jsp:getProperty name="memberInfo" property="email"/></td>
</tr>
<tr>
	<td>�ּ�</td>
	<td colspan="3">
	<jsp:getProperty name="memberInfo" property="address"/>
	</td>
</tr>
</table>


</body>
</html>