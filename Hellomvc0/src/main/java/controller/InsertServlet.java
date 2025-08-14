package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HelloDAO;
import util.DBUtil;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      String name = request.getParameter("name");
     
//      request.setAttribute("message", name);
//      request.getRequestDispatcher("result.jsp").forward(request, response);
    
      HelloDAO dao = new HelloDAO();
      dao.insertName(name);
      
      

      response.sendRedirect("list");
  }
}