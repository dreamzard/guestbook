<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<section>
		<h2>방명록 작성</h2>
		<form action="guestbook" method="post">
			<p>
				이름: <input type="text" name="name" required>
			</p>
			<p>
				메시지:
				<textarea name="message" required></textarea>
			</p>
			<p>
				<button type="submit">등록</button>
			</p>
		</form>
	</section>
	<jsp:include page="footer.jsp" />
	<script src="script.js"></script>
</body>
</html>