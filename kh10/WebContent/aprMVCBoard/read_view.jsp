<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 1L);
%>

<html>
<head><title>�� �б�</title></head>
<body>
<table>
	<tr>
		<td>����</td>
		<td>${article.title}</td>
	</tr>
	<tr>
		<td>�ۼ���</td>
		<td>${article.writerName}</td>
	</tr>
	<tr>
		<td>�ۼ���</td>
		<td><fmt:formatDate value="${article.postingDate}"
			pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<pre><c:out value="${article.content}"/></pre>		
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<a href="list.jsp?p=${param.p}">��Ϻ���</a>
		<a href="reply_form.jsp?parentId=${article.id}&p=${param.p}">�亯����</a>
		<a href="update_form.jsp?articleId=${article.id}&p=${param.p}">�����ϱ�</a>
		<a href="delete_form.jsp?articleId=${article.id}">�����ϱ�</a>
		</td>
	</tr>		

<!-- ��۰��� �۾��ϱ� -->
<!-- ����� ����� -->
<table>
<form action="<c:url value='comment.jsp'/>" method="post">

	<tr>
		<td>
			<textarea name="commentt" rows="5" cols="20"></textarea>
		</td>
		
		<td>
			 <input type="text" name="commenter" size="10" placeholder="�ۼ���"/><br/>
			 <input type="password" name="password" size="10" placeholder="�۾�ȣ" /><br/>
			<input type="submit" value="����"/><br/>
		</td>
	</tr>
	
</form>
</table>
<%-- 	
<!-- ��۳��� ����ϱ� -->
	<c:choose>
		<c:when test="${listModel.hasArticle == false}">
		<tr>
			<td colspan="5">
				�Խñ��� �����ϴ�.
			</td>
		</tr>		
		</c:when>
		<c:otherwise>
		<c:forEach var="article" items="${listModel.articleList}">
		<tr>
			<td>${article.id}</td>
				<td>
				<c:if test="${article.level >0}">
				<c:forEach begin="1" end="${article.level}">-</c:forEach>&gt;
				</c:if>
				<c:set var="query" value="articleId=${article.id}&p=${listModel.requestPage}"/>
				<a href="<c:url value="read.jsp?${query}"/>">
				${article.title}
				</a>
				</td>
			<td>${article.writerName}</td>
			<td>${article.postingDate}</td>
			<td>${article.readCount}</td>
		</tr>	
		</c:forEach>
		<tr>
			<td colspan="5">
			
			<c:if test="${beginPage >10}">
				<a href="<c:url value="list.jsp?p=${beginPage-1}"/>">����</a>
			</c:if>
			<c:forEach var="pno" begin="${beginPage}" end="${endPage}">
			<a href="<c:url value="list.jsp?p=${pno}" />">[${pno}]</a>
			</c:forEach>
			<c:if test="${endPage < listModel.totalPageCount}">
				<a href="<c:url value="list.jsp?p=${endPage +1 }"/>">����</a>
			</c:if>
			</td>
		</tr>
		</c:otherwise>
	</c:choose>	
	
	
	 --%>
	

</table>
</body>
</html>