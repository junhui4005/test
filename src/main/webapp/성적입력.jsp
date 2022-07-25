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
	<h3>성적입력</h3>
		<form action="성적입력컨트롤러.jsp" method="post" id="exam" name="exam">
		<table border="1">
			<tr>
				<td>학번</td><td><input type="text" id="sno" name="sno"></td>
			</tr>
			<tr>
				<td>국어점수</td><td><input type="text" id="ekor" name="ekor"></td>
			</tr>
			<tr>
				<td>수학점수</td><td><input type="text" id="emath" name="emath"></td>
			</tr>
			<tr>
				<td>영어점수</td><td><input type="text" id="eeng" name="eeng"></td>
			</tr>
			<tr>
				<td>역사점수</td><td><input type="text" id="ehis" name="ehis"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" onclick="examadd1()">등록하기</button></td>
			</tr>
		</table>
	</form>


<script type="text/javascript">
	function examadd1(){
	
	if(document.exam.sno.value==""){
		alert("학생번호가 입력되지 않았습니다.");
		document.exam.sno.focus();
		return false;
	}
	if(document.exam.ekor.value==""){
		alert("국어점수가 입력되지 않았습니다.");
			document.exam.ekor.focus();
				return false;
	}
	if(document.exam.emath.value==""){
		alert("수학점수가 입력되지 않았습니다.");
			document.exam.emath.focus();
				return false;
	}
	if(document.exam.eeng.value==""){
		alert("영어점수가 입력되지 않았습니다.");
			document.exam.eeng.focus();
				return false;
	}
	if(document.exam.ehis.value==""){
		alert("역사점수가 입력되지 않았습니다.");
			document.exam.ehis.focus();
				return false;
	}
	
	alert("학생 성적이 모두 입력되었습니다.");
	document.exam.submit();
}

</script>
</body>
</html>