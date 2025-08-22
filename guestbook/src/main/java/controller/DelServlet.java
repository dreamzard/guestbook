package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HelloDAO;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/del")
public class DelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelServlet() {
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
		
		String del_id = request.getParameter("del_id");

//      request.setAttribute("message", name);
//      request.getRequestDispatcher("result.jsp").forward(request, response);

		HelloDAO dao = new HelloDAO();
		dao.deleteGuestbook(del_id);
//      dao.insertName(cust_no);
//      dao.insertName(resv_date);
//      dao.insertName(court_no);
//		request.getRequestDispatcher("resvlist.jsp").forward(request, response);

		response.sendRedirect("list");
		
//		doGet(request, response);
	}
}