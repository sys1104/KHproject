<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<!-- �������̽����� Ŭ�������� ã�Ƴ��� �� ���� �ֵ��� jdbc api-->

<html>
<head><title>ȸ�� ���</title></head>
<body>
MEMBER_ZGM ���̺��� ����
<table width="100%" border="1">
<tr>
	<td>�̸�</td> <td>���̵�</td> <td>�̸���</td>
</tr>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:oracle:thin:@istudy.iptime.org:7000:ORCL";
		String dbUser = "KH10";
		String dbPass = "oracle";
		
		String query = "select * from MEMBER_ZGM order by MEMBERID";

		
		/* ���� ���� ���ᰴü */	
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		/* ������ ���� */
		stmt = conn.createStatement();
		
		/* ó������� ����(rs)�� ���� */
		rs = stmt.executeQuery(query);
		
		/* ����� ���� �������� �ϱ⿡ ������ �ڵ�. */
		while(rs.next()) {
%>
<tr>
	<td><%= rs.getString("NAME") %></td>
	<td><%= rs.getString("MEMBERID") %></td>
	<td><%= rs.getString("EMAIL") %></td>
</tr>
<%
		}
	} catch(SQLException ex) {
		 out.println(ex.getMessage());
		 ex.printStackTrace();
	} finally {
		if(rs!=null) try {rs.close();} catch(SQLException ex) {}
		if(stmt!= null) try {stmt.close(); } catch(SQLException ex) {}
		if(conn!= null) try {conn.close(); } catch(SQLException ex) {}
	}
%>
</table>
</body>
</html>