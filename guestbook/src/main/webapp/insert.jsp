<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>방명록 작성</h2>
		<form name="frm" method="post" action="guestbook">
			<table border="1">
				<tr>
					<th>이름:</th> <td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<th>메시지:</th> <td><textarea name="message" required></textarea></td>
				</tr>
				<tr>
					<th colspan="2"><button type="submit" onclick="checkResv()">등록</button> <input
						type="button" value="다시쓰기" onclick="resetResv()"></th>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>