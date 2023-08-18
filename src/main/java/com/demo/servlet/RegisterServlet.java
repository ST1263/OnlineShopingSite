package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.UserProfileBean;
import com.demo.dao.UserProfileDao;
import com.demo.dao.UserProfileImpl;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserProfileDao ud;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		String mobile = request.getParameter("mobile") ;
		String birthdate = request.getParameter("birthdate");
	//	String gender = request.getParameter("gender");
		UserProfileBean ub1 = new UserProfileBean(name, emailid, password, cpassword, mobile, birthdate);
		RequestDispatcher rd ;
		ud = new UserProfileImpl();
		ud.addUser(ub1);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if(ub1!=null)
		{
			rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		else
		{
			out.println("<h2 style='color:red'>Sorry Registration Failed..Try Again.. </h2>");
			rd = request.getRequestDispatcher("Register.jsp");
			rd.include(request, response);
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
