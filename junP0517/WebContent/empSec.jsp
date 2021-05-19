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
		pstmt = con.prepareStatement("select * from emp");
		rs = pstmt.executeQuery();
	%>

	<div>
		<table border='1'>
			<tr>
				<td>사원번호</td>
				<td>사원이름</td>
				<td>사원직급</td>
				<td>성별</td>
			</tr>

			<% while(rs.next()) { %>
			<tr>
				<td><a href="index.jsp?cont=empwh.jsp&em=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
			</tr>
			<% } %>
		</table>
	</div>
</body>
</html>