<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pstmt = con.prepareStatement("insert into emp_money values(?, ?, ?, ?, ?, ?)");
		pstmt.setString(1, request.getParameter("un1"));
		pstmt.setString(2, request.getParameter("un2"));
		pstmt.setString(3, request.getParameter("un3"));
		pstmt.setString(4, request.getParameter("un4"));
		pstmt.setString(5, request.getParameter("un5"));
		pstmt.setString(6, request.getParameter("un6"));
		pstmt.executeUpdate();
	%>

	<script>
		location.href="index.jsp";
	</script>
</body>
</html>