<%@page import="DAO.Dao"%>
<%@page import="DTO.Exam"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		String sno= request.getParameter("sno");
		int ekor= Integer.parseInt(request.getParameter("ekor")) ;
		int emath= Integer.parseInt(request.getParameter("emath")) ;
		int eeng= Integer.parseInt(request.getParameter("eeng")) ;
		int ehis= Integer.parseInt(request.getParameter("ehis")) ;
		
		Exam exam = new Exam(sno,ekor,emath, eeng, ehis);
		Dao dao = new Dao();
		boolean result = dao.addexam(exam);
		if(result){
			response.sendRedirect("index.jsp");
		}
		else{	response.sendRedirect("성적입력.jsp");}
	%> 

</body>
</html>