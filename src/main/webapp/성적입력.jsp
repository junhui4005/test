<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
	<h3>�����Է�</h3>
		<form action="�����Է���Ʈ�ѷ�.jsp" method="post" id="exam" name="exam">
		<table border="1">
			<tr>
				<td>�й�</td><td><input type="text" id="sno" name="sno"></td>
			</tr>
			<tr>
				<td>��������</td><td><input type="text" id="ekor" name="ekor"></td>
			</tr>
			<tr>
				<td>��������</td><td><input type="text" id="emath" name="emath"></td>
			</tr>
			<tr>
				<td>��������</td><td><input type="text" id="eeng" name="eeng"></td>
			</tr>
			<tr>
				<td>��������</td><td><input type="text" id="ehis" name="ehis"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" onclick="examadd1()">����ϱ�</button></td>
			</tr>
		</table>
	</form>


<script type="text/javascript">
	function examadd1(){
	
	if(document.exam.sno.value==""){
		alert("�л���ȣ�� �Էµ��� �ʾҽ��ϴ�.");
		document.exam.sno.focus();
		return false;
	}
	if(document.exam.ekor.value==""){
		alert("���������� �Էµ��� �ʾҽ��ϴ�.");
			document.exam.ekor.focus();
				return false;
	}
	if(document.exam.emath.value==""){
		alert("���������� �Էµ��� �ʾҽ��ϴ�.");
			document.exam.emath.focus();
				return false;
	}
	if(document.exam.eeng.value==""){
		alert("���������� �Էµ��� �ʾҽ��ϴ�.");
			document.exam.eeng.focus();
				return false;
	}
	if(document.exam.ehis.value==""){
		alert("���������� �Էµ��� �ʾҽ��ϴ�.");
			document.exam.ehis.focus();
				return false;
	}
	
	alert("�л� ������ ��� �ԷµǾ����ϴ�.");
	document.exam.submit();
}

</script>
</body>
</html>