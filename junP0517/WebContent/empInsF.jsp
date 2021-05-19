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
	<form method="post" action="index.jsp?cont=empInsU.jsp">
		<div>
			<h2>사원매출등록</h2>
			<table border='1'>
				<tr>
					<td>사원번호</td>
					<td>서북권</td>
					<td>서남권</td>
					<td>동북권</td>
					<td>동남권</td>
					<td>도심원</td>
				</tr>
				<tr>
					<td><input type="text" name="un1"></td>
					<td><input type="text" name="un2"></td>
					<td><input type="text" name="un3"></td>
					<td><input type="text" name="un4"></td>
					<td><input type="text" name="un5"></td>
					<td><input type="text" name="un6"></td>
				</tr>
			</table>
			<input type="submit" value="확인">
		</div>
	</form>
</body>
</html>