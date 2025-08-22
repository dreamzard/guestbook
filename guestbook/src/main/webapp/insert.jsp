<%@page import="util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<link rel="stylesheet" href="style.css">
<style>
.form_width{
margin: 0 300px;
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>방명록 작성</h2>
		<br>
		 
			<form name="frm" method="post" action="insert">
				<div class="card" style="width: 45rem; margin: 0 auto;">
					<ul class="list-group list-group-flush">
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBUtil.getConnection();
				String sql = "select max(id)+1 as select_id from tbl_guestbook";
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					String select_id = rs.getString("select_id");
				
			
			%>
			<li class="list-group-item">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label" >ID</label>
				<input type="text" class="form-control" id="exampleFormControlInput1" value="<%= select_id %>" aria-label="Disabled input example" disabled>
				<input type="hidden" name="id" value="<%= select_id %>" readonly>
			</div>
			</li>
			<% 
}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
			<li class="list-group-item">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">이름</label>
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이름을 입력해주세요" name="name" required>
			</div>
			</li>
			<li class="list-group-item">
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">방명록</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="방명록을 입력해주세요" name="message" required></textarea>
			</div>
			</li>
			<li class="list-group-item">
			<div class="mb-3">
				<button type="submit" onclick="checkResv()" class="btn btn-primary">등록</button>
				<button type="button" onclick="resetResv()" class="btn btn-secondary">다시쓰기</button>
			</div>
			</li>
			</ul>
			</div>
		</form>
		
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>