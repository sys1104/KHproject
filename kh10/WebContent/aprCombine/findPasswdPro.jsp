<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "soldesk.logon.LogonDBBean" %>
<%@ include file="color.jsp" %>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	String name= request.getParameter("name");

	LogonDBBean manager= LogonDBBean.getInstance();
	
	
	String findpasswd = manager.findPassMember(id, name);

	System.out.println(findpasswd);%>

<table>
	<tr>
		<td bgcolor="<%=value_c %>" align="center">
		<input type="text" name="passwd" size="10" value="<%=findpasswd %>">
			<form>
				<input type="button" value="��������" onclick="window.location='main.jsp'">			
			</form>
			5���Ŀ� �������� �̵��մϴ�.<meta http-equiv="Refresh" content="5;url=main.jsp">
		</td>
	</tr>
</table>
