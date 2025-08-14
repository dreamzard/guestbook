<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>예약 정보 목록</h2>
		<div>

			<table border="1">
				<tr>
					<th>예약번호</th>
					<th>고객번호</th>
					<th>예약일</th>
					<th>코트번호</th>
				</tr>
<!-- -->
					<c:forEach var="DTO" items="${list}">
					<tr>
						<td>${DTO.resvNo}</td>
						<td>${DTO.custNo}</td>
						<td>${DTO.resvDate}</td>
						<td>${DTO.courtNo}</td>
					</tr>
					</c:forEach>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>