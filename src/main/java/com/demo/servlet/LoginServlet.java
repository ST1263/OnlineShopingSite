package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.dao.UserProfileDao;
import com.demo.dao.UserProfileImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emailid = request.getParameter("emailid");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
    	response.setContentType("text/html");
        UserProfileDao ud = new UserProfileImpl();
        if (ud.validate(emailid, password)) {
        	out.println(ud);
        	out.println(response);
        	 HttpSession session = request.getSession();
        	//request.setAttribute("email", emailid);
        	 session.setAttribute("email", emailid);
            RequestDispatcher dispatcher = request.getRequestDispatcher("ProductDataServlet");
            dispatcher.forward(request, response);
        }
        else {
        	out.println("<h3 style='color:red'>Sorry Wrong Username or Password..Try Again.. </h3>");
        	RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
            dispatcher.include(request, response);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
