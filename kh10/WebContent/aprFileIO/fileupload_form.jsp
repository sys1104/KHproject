<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<html>
<head><title>multipart ��</title></head>
<body>
<form action="fileupload.jsp" method="post" enctype="multipart/form-data">
text1 : <input type="text" name="text1" /><br/>
file1 : <input type="file" name="file1" /><br/>
file2 : <input type="file" name="file2" /><br/>
<input type="submit" value="����" />
</form>

</body>
</html>