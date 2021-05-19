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
		pstmt = con.prepareStatement("select * from emp_money where em_no = ?");
		pstmt.setString(1, request.getParameter("em"));
		rs = pstmt.executeQuery();
	%>

	<div>
		<table border='1'>
			<tr>
				<td>사원번호</td>
				<td>서북권</td>
				<td>서남권</td>
				<td>동북권</td>
				<td>동남권</td>
				<td>도심원</td>
			</tr>

			<% while(rs.next()) { %>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
			</tr>
			<% } %>
		</table>
	</div>
</body>
</html>