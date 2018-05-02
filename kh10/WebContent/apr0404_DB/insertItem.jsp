<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
	String idValue = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmtItem = null;
	PreparedStatement pstmtDetail = null;
	
	String jdbcDriver = "jdbc:oracle:thin:@istudy.iptime.org:7000:ORCL";
	String dbUser = "KH10";
	String dbPass = "oracle";
	
	Throwable occuredException = null;
	
	try {
		int id = Integer.parseInt(idValue);
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		conn.setAutoCommit(false);
		
		pstmtItem = conn.prepareStatement("insert into ZGM_ITEM values (?,?)");
		pstmtItem.setInt(1,id);
		pstmtItem.setString(2, "������ �Ż��ǰ �̸�" +id);
		pstmtItem.executeUpdate();
		
		if(request.getParameter("error")!= null) {
			throw new Exception("�ǵ��� ���� �߻�");
		}
		
		pstmtDetail = conn.prepareStatement("insert into ZGM_ITEM_DETAIL values (?,?)");
		pstmtDetail.setInt(1,id);
		pstmtDetail.setString(2,"���־��� �� ����" +id);
		pstmtDetail.executeUpdate();
		
		conn.commit();
	} catch(Throwable e) {
		if(conn != null) {
			try {
				conn.rollback();
			} catch(SQLException ex) {}
		}
		occuredException = e;
	} finally {
		if(pstmtItem != null)
			try {pstmtItem.close();} catch(SQLException ex) {}
		if(pstmtDetail != null)
			try {pstmtDetail.close();} catch(SQLException ex) {}
		if(conn!= null) try{conn.close();} catch(SQLException ex) {}
	}
%>

<html>
<head><title>ITEM �� �Է�</title></head>
<body>

<% if(occuredException != null) { %>
������ �߻��Ͽ��� : <%= occuredException.getMessage() %>
<% } else { %>
�����Ͱ� ���������� ��
<% } %>
</body>
</html>


<!-- �����ϰ��� URL�� id=1�� �־���� �����Ͱ� �־�����! -->


