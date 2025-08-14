package controller;

//import jakarta.servlet.*;
//import jakarta.servlet.http.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;

@WebServlet("guestbook")
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String message = request.getParameter("message");

        GuestbookDTO dto = new GuestbookDTO(name, message);
        GuestbookDAO dao = new GuestbookDAO();
        dao.insert(dto);

        response.sendRedirect("list.jsp");
    }
}
