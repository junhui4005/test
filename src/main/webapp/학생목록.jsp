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
		
		<h3>�л����</h3>
		<table border="1">
			<tr>
				<th>�й�</th>	<th>�̸�</th>	<th>�г�</th>	<th>��</th>	<th>��ȣ</th>	<th>����</th>	<th>��ȭ��ȣ</th>	<th>�ּ�</th>
			</tr>
			<%for(Student student:getstudentslist ){ 
			String �й� = student.getSno();
			String �г� = �й�.substring(0,1);
			String �� = �й�.substring(1,3);
			String ��ȣ = �й�.substring(3,5);
			String ���� = student.getSgender();
			String ���౸��="����";
			if(����.equals("F")){
				���౸��="����";
			}
			%>
			<tr>
				<td><%=�й� %></td>	<td><%=student.getSname() %></td>	
				<td><%=�г� %></td>	<td><%=�� %></td>	
				<td><%=��ȣ %></td>	<td><%=���౸��%></td>	
				<td><%=student.getSphone()%></td>	<td><%=student.getSaddress() %></td>
			</tr>
				<%}%>
		</table>
	
	
</body>
</html>