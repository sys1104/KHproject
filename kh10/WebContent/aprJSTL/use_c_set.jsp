<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "ssol.jstl.Member" %>
<%@ page import = "java.util.HashMap" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member member = new Member();
	HashMap<String, String> pref= new HashMap<String, String>();
%>

<html>

<body>


<c:set var="member" value="<%=member %>" scope="page" />
<c:set target="${member}" property="name" value="�ֹ���" />

<c:set var="pref" value="<%=pref %>"/>
<c:set var="favoriteColor" value="#{pref.color }" />

ȸ�� �̸�: ${member.name},
�����ϴ� ��: ${favoriteColor}

<br/>
<c:set target="${pref}" property="color" value="red" />
���� ���� �����ϴ� ��: ${favoriteColor}
 
</body>
</html>