<%@page import="DAO.Dao"%>
<%@page import="DTO.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% Dao dao = new Dao();
	ArrayList<Student> getstudentslist = dao.getstudentlist();
	
	%>
		<%@include file="header.jsp" %>
		
		<h3>학생목록</h3>
		<table border="1">
			<tr>
				<th>학번</th>	<th>이름</th>	<th>학년</th>	<th>반</th>	<th>번호</th>	<th>성별</th>	<th>전화번호</th>	<th>주소</th>
			</tr>
			<%for(Student student:getstudentslist ){ 
			String 학번 = student.getSno();
			String 학년 = 학번.substring(0,1);
			String 반 = 학번.substring(1,3);
			String 번호 = 학번.substring(3,5);
			String 성별 = student.getSgender();
			String 남녀구분="남자";
			if(성별.equals("F")){
				남녀구분="여자";
			}
			%>
			<tr>
				<td><%=학번 %></td>	<td><%=student.getSname() %></td>	
				<td><%=학년 %></td>	<td><%=반 %></td>	
				<td><%=번호 %></td>	<td><%=남녀구분%></td>	
				<td><%=student.getSphone()%></td>	<td><%=student.getSaddress() %></td>
			</tr>
				<%}%>
		</table>
	
	
</body>
</html>