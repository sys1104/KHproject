<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%
	request.setAttribute("greeting", "�ȳ��ϼ���");
%>

<tiles:insertDefinition name="hello"/>
