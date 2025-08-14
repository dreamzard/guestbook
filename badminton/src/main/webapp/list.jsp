<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: calc(100vh - 160px);
	background-color: lightgray;
}

section h2 {
	text-align: center;
	padding: 20px;
}

section div {
	display: flex;
	justify-content: center;
}

td {
	text-align: center;
}
</style>
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
</body>
</html>