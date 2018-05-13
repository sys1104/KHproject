<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import = "soldesk.FileIO.AddPdsItemService" %>
<%@ page import = "soldesk.FileIO.FileSaveHelper" %>
<%@ page import = "soldesk.FileIO.AddRequest" %>
<%@ page import = "soldesk.FileIO.PdsItem" %>
<%@ page import = "java.util.Iterator" %>
<%@ page import = "java.util.List" %>
<%@ page import = "org.apache.commons.fileupload.FileItem" %>
<%@ page import = "org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import = "org.apache.commons.fileupload.servlet.ServletFileUpload" %>

<%
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	if(!isMultipart) {
		response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
	DiskFileItemFactory factory = new DiskFileItemFactory();
	
	ServletFileUpload upload = new ServletFileUpload(factory);
	
	List<FileItem> items = upload.parseRequest(request);
	
	AddRequest addRequest = new AddRequest();
	
	Iterator<FileItem> iter = items.iterator();
	while(iter.hasNext()) {
		FileItem item = iter.next();
		if(item.isFormField()) {
			String name = item.getFieldName();
			if(name.equals("description")) {
				String value = item.getString();
				addRequest.setDescription(value);
			}
		} 
		else {
			String name = item.getFieldName();
			if(name.equals("file")) {
				String realPath = FileSaveHelper.save("C:\\pds", item.getInputStream());
				addRequest.setFileName(item.getName());
				addRequest.setFileSize(item.getSize());
				addRequest.setRealPath(realPath);
			}
		}
	}
	PdsItem pdsItem = AddPdsItemService.getInstance().add(addRequest);
	
%>




<html>
<head><title>���ε� ����</title></head>
<body>
<%= pdsItem.getFileName() %> ������ ���ε��߽��ϴ�.
<br/>
<a href="list.jsp">��Ϻ���</a>
</body>
</html>