<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="gallery.Theme"%>
<%@ page import="gallery.ThemeManager"%>
<%@ page import="gallery.ThemeManagerException"%>

<%
	String themeId = request.getParameter("id");

	ThemeManager manager = ThemeManager.getInstance();
	Theme theme = manager.select(Integer.parseInt(themeId));
%>
<c:set var="theme" value="<%=theme%>" />
<c:if test="${empty theme}">
�������� �ʴ� �׸� �̹��� �Դϴ�.
</c:if>
<c:if test="${! empty theme}">
	<table width="100%" border="1" cellpadding="1" cellspacing="0">
		<tr>
			<td>����</td>
			<td>${theme.title}</td>
		</tr>
		<tr>
			<td>�ۼ���</td>
			<td>
				${theme.name}
				<c:if test="${empty theme.email}">
				<a href="mailto:${theme.email}">[�̸���]</a>
				</c:if>
			</td>
		</tr>
		<c:if test="${! empty theme.image}">
			<tr>
				<td colspan="2" align="center">
					<img src="/KH10GALLERY/image/${theme.image}" width="150" border="0"
					style="cursor: pointer;" onclick="viewImage('/KH10GALLERY/image/${theme.image}')"/> 
					<br>
				</td>
			</tr>
		</c:if>
		<tr>
			<td>����</td>
			<td><pre>${theme.content}</pre></td>
		</tr>
		<tr>
			<td colspan="2">
			<a href="javascript:goReply()">[�亯]</a> 
			<a href="javascript:goModify()">[����]</a>
			<a href="javascript:goDelete()">[����]</a> 
			<a href="javascript:goList()">[���]</a>
			</td>
		</tr>
	</table>
</c:if>

<script language="JavaScript" type="text/javascript">
	function goReply() {
		document.move.action = "writeForm.jsp";
		document.move.submit();
	}
	function goModify() {
		document.move.action = "updateForm.jsp";
		document.move.submit();
	}
	function goDelete() {
		document.move.action = "deleteForm.jsp";
		document.move.submit();
	}
	function goList() {
		document.move.action = "list.jsp"
		document.move.submit();
	}
	
	/* 	�̹���ũ�Ժ��� �Լ�. �̹����� Ŭ���ϸ� ������������ �̹����� ��µǰ�, Ŭ���ϸ� �������� ������. */
	function viewImage(img){
		 /* W=img1.width; 
			H=img1.height;  */
		 W= new Image().width; 
		 H= new Image().height; 

		 O="width="+W+",height="+H+",scrollbars=yes"; 
		 imgWin=window.open("","",O); 
		 imgWin.document.write("<html><head><title>�̹����󼼺���</title></head>");
		 imgWin.document.write("<body topmargin=0 leftmargin=0>");
		 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='Ŭ���Ͻø� â�� �����ϴ�.'>");
		 imgWin.document.close();
	}
	
	
</script>

<form name="move" method="post">
	<input type="hidden" name="id" value="${theme.id}"> 
	<input type="hidden" name="parentId" value="${theme.id}"> 
	<input type="hidden" name="groupId" value="${theme.groupId}"> 
	<input type="hidden" name="page" value="${param.page}">
	
	<c:forEach var="searchCond" items="${paramValues.search_cond}">
		<c:if test="${searchCond == 'title'}">
			<input type="hidden" name="search_cond" value="title">
		</c:if>
		<c:if test="${searchCond == 'name'}">
			<input type="hidden" name="search_cond" value="name">
		</c:if>
	</c:forEach>

	<c:if test="${! empty param.search_key}">
		<input type="hidden" name="search_key" value="${param.search_key}">
	</c:if>

</form>

<!-- **ũ�Ժ��� ���� �ҽ��ڵ� ��α�... -->
<!-- http://blog.naver.com/kdeun00/80158174297 -->
<!-- // �̹��� Ŭ���� ���� ũ��� �˾� ����
function doImgPop(img){ 
 img1= new Image(); 
 img1.src=(img); 
 imgControll(img); 
} 
  
function imgControll(img){ 
 if((img1.width!=0)&&(img1.height!=0)){ 
    viewImage(img); 
  } 
  else{ 
     controller="imgControll('"+img+"')"; 
     intervalID=setTimeout(controller,20); 
  } 
} 

function viewImage(img){ 
 W=img1.width; 
 H=img1.height; 
 O="width="+W+",height="+H+",scrollbars=yes"; 
 imgWin=window.open("","",O); 
 imgWin.document.write("<html><head><title>:*:*:*: �̹����󼼺��� :*:*:*:*:*:*:</title></head>");
 imgWin.document.write("<body topmargin=0 leftmargin=0>");
 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='Ŭ���Ͻø� â�� �����ϴ�.'>");
 imgWin.document.close();
}

 

����

<img src="���ϰ��" width="295px" height="295px" title="Ŭ���Ͻø� ����ũ��� ���� �� �ֽ��ϴ�."
     style="cursor: pointer;" onclick="doImgPop('���ϰ��')" " />


 -->
