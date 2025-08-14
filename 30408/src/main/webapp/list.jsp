<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>list</title>
</head>
<body>
<%@ page import="java.util.List" %>
<%@ page import="model.GuestbookDTO" %>
<%@ page import="model.GuestbookDAO" %>
<jsp:include page="header.jsp" />
<jsp:include page="nav.jsp" />
<section>
    <h2>방명록 목록</h2>
    <%
        GuestbookDAO dao = new GuestbookDAO();
        List<GuestbookDTO> list = dao.selectAll();
    %>
    <table border="1" width="80%" align="center">
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>메시지</th>
            <th>작성일</th>
        </tr>
        <%
            for (GuestbookDTO dto : list) {
        %>
        <tr>
            <td><%= dto.getId() %></td>
            <td><%= dto.getName() %></td>
            <td><%= dto.getMessage() %></td>
            <td><%= dto.getCreatedAt() %></td>
        </tr>
        <%
            }
        %>
    </table>
</section>
<jsp:include page="footer.jsp" />
<script src="script.js"></script>
</body>
</html>