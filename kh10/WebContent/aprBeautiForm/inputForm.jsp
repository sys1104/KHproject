<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>ȸ������</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function checkIt() {
		var userinput = eval("document.userinput");
		if(!userinput.id.value){
			alert("���̵� �Է��ϼ���!");
			return false;
		}
		if(!userinput.passwd.value){
			alert("��й�ȣ�� �Է��ϼ���!");
			return false;
		}
		if(userinput.passwd.value != userinput.passwd2.value){
			alert("��й�ȣ�� �����ϰ� �Է��ϼ���!");
			return false;
		}
		if(!userinput.name.value){
			alert("�̸��� �Է��ϼ���!");
			return false;
		}
		if(!userinput.jumin1.value || !userinput.jumin2.value){
			alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���!");
			return false;
		}	
	}
	// ���̵� �ߺ�üũ
	function openConfirmid(userinput){
		// ���̵� �Է¿��� �˻�
		if(userinput.id.value == ""){
			alert("���̵� �Է��ϼ���!");
			return;
		}
		// url�� ����� �Է� id ����
		url = "confirmId.jsp?id=" + userinput.id.value;
		// ��â ����
		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
	}
	// �����ȣ üũ
	function zipCheck(){
		url = "ZipCheck.jsp?check=y";
		open(url,"post","toolbar=no ,width=500 ,height=300 ,directories=no,status=yes,scrollbars=yes,menubar=no");
	}
</script>
</head>
<body>
<div id="joinWrap">
	<h1>Member Join</h1>
	<form action="inputPro.jsp" name="userinput" method="post" onsubmit="return checkIt()">
		<table>
			<colgroup>
				<col width="25%" />
				<col width="*" />
			</colgroup>
			<tr>
				<th><span class="star">*</span>���̵�</th>
				<td>
					<input type="text" name="id" maxlength="10" />
					<span class="idCheck"><input type="button" name="confirm_id" onclick="openConfirmid(this.form)" /></span>
				</td>
			</tr>
			<tr>
				<th><span class="star">*</span>��й�ȣ</th>
				<td><input type="password" name="passwd" maxlength="10" /></td>
			</tr>
			<tr>
				<th><span class="star">*</span>��й�ȣ Ȯ��</th>
				<td><input type="password" name="passwd2" maxlength="10" /></td>
			</tr>
			<tr>
				<th><span class="star">*</span>�̸�</th>
				<td><input type="text" name="name" maxlength="10" /></td>
			</tr>
			<tr>
				<th><span class="star">*</span>�ֹε�Ϲ�ȣ</th>
				<td>
					<input type="text" name="jumin1" maxlength="6" />
					<span> - </span>
					<input type="text" name="jumin2" maxlength="7" />
				</td>
			</tr>
			<tr>
				<th>�ּ�</th>
				<td>
					<input type="text" name="zipcode" maxlength="7" class="w50" />
					<span class="zipCheck"><input type="button" onclick="zipCheck()" /></span>
					<span class="addr"><input type="text" name="address" maxlength="70" class="w300" /></span>
				</td>
			</tr>
			<tr>
				<th>E-Mail</th>
				<td><input type="text" name="email" maxlength="50" class="w300" /></td>
			</tr>
			<tr>
				<th>Blog</th>
				<td><input type="text" name="blog" maxlength="50" class="w300" /></td>
			</tr>
		</table>
		<div class="btnArea">
			<input type="submit" name="confirm" value="Ok" />
			<input type="reset" name="reset" value="Reset" />
			<input type="button" value="Cancel" onclick="javascript:window.location='main.jsp'" />
		</div>
	</form>
</div>
</body>
</html>