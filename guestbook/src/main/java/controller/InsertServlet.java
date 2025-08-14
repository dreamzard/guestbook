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
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String resv_no = request.getParameter("resv_no");
		String cust_no = request.getParameter("cust_no");
		String resv_date = request.getParameter("resv_date");
		String court_no = request.getParameter("court_no");

//      request.setAttribute("message", name);
//      request.getRequestDispatcher("result.jsp").forward(request, response);

		HelloDAO dao = new HelloDAO();
		dao.insertName(resv_no, cust_no, resv_date, court_no);
//      dao.insertName(cust_no);
//      dao.insertName(resv_date);
//      dao.insertName(court_no);
//		request.getRequestDispatcher("resvlist.jsp").forward(request, response);

		response.sendRedirect("list");
		
//		doGet(request, response);
	}
}