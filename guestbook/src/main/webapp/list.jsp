<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link rel="stylesheet" href="style.css">
<style>
	section{
		padding: 0 300px;
	}
</style>
</head>
<body class="d-flex flex-column min-vh-100">
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>예약 정보 목록</h2>
		<br>
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col" width="80px">아이디</th>
					<th scope="col">이름</th>
					<th scope="col">방명록</th>
					<th scope="col" width="100px">삭제</th>
				</tr>
			</thead>
			<tbody class="table-group-divider">
				<c:forEach var="DTO" items="${list}">
				
					<tr>
						<td>${DTO.id}</td>
						<td>${DTO.name}</td>
						<td>${DTO.message}</td>
						<td>
						<form name="frm" method="post" action="${pageContext.request.contextPath}/del">
						<input type="hidden" name="del_id" value="${DTO.id}" readonly>
						<button type="button" class="btn btn-outline-danger" onclick="del_action(this)">삭제</button>
						</form>
						</td>
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
		<!-- 
		<div class="this_is_space">
		공간입니다. 만약 이 공간을 보셨다면 조용히 지나가 주세요.
		</div>
		 -->
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.22.4/dist/sweetalert2.all.min.js"></script>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>