<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table width="800" border="1" bordercolors="gray">
			<tr height="40">
				<td align="center" width="50">아이디</td>
				<td align="center" width="200">이메일</td>
				<td align="center" width="150">전화</td>
				<td align="center" width="150">취미</td>
				<td align="center" width="150">직업</td>
				<td align="center" width="100">나이</td>
			</tr>

			<c:forEach var="bean" items="${v}">
				<tr height="40">
					<td align="center" width="50">${bean.id}</td>
					<td align="center" width="200">${bean.email}</td>
					<td align="center" width="150">${bean.tel}</td>
					<td align="center" width="150">${bean.hobby}</td>
					<td align="center" width="150">${bean.job}</td>
					<td align="center" width="100">${bean.age}</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>