<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
 URL�ڿ� ?dest=4�� �Է��ϼ���!
 
<c:if test="${param.dest == '1'}">
	<c:redirect url="/use_c_set.jsp"/> <!--   /use ���� �� ���� /�� WebContent �ٷ� �ؿ��� ������ ã�� ������, ������ ������ ������ ���� -->
</c:if> 

<c:if test="${param.dest == '2'}">
	<c:redirect url="use_c_set.jsp"/>
</c:if>

<c:if test="${param.dest == '3'}">
	<c:redirect url="/aprEL/viewToday.jsp" context="/kh10"/>
</c:if>

<c:if test="${param.dest == '4'}">
	<c:redirect url="http://www.youtube.com/results">
		<c:param name="search_query" value="ryu" />
	</c:redirect>		
</c:if>
