<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	request.setCharacterEncoding("euc-kr");
	
	String memberID = request.getParameter("memberID");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		String jdbcDriver = "jdbc:oracle:thin:@istudy.iptime.org:7000:ORCL";
		String dbUser = "KH10";
		String dbPass = "oracle";
		
		conn = DriverManager.getConnection(jdbcDriver,dbUser, dbPass);
		pstmt = conn.prepareStatement("insert into ZGM_ENROLL values(?,?,?,?)");
		pstmt.setString(1, memberID);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		
		pstmt.executeUpdate();		
	} finally {
		if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if(conn != null) try {conn.close(); } catch(SQLException ex) {}
	}
	
%>

<html>
<head><title>����</title></head>
<body>
	<form action= "./insertForm.jsp" method="post"> 

	ZGM_ENROLL ���̺� ���ο� ���ڵ带 �����߽��ϴ�
	<p>
	�����͸� �� �����ϰڽ��ϱ�?
	<input type ="submit" value="���Է��ϱ�">
	
</body>
</html>