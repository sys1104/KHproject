<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>���� ��θ� ����Ͽ� �ڿ� �б�</title></head>
<body>
<%
	FileReader fr = null;
	char[] buff = new char[512];
	int len = -1;
	
	try{
		fr = new FileReader(
				"C:\\java\\App\\kh10\\WebContent\\mar0329\\message\\notice\\notice.txt");
		while((len=fr.read(buff)) != -1) {
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("���� �߻�: " +ex.getMessage());
	} finally {
		if(fr != null) try {fr.close();} catch(IOException ex) {}
	}
%>
</body>
</html>