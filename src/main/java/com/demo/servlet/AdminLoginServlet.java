package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.bean.AdminLoginBean;
import com.demo.bean.UserProfileBean;
import com.demo.dao.AdminLoginDao;
import com.demo.dao.AdminLoginImpl;
import com.demo.dao.UserProfileDao;
import com.demo.dao.UserProfileImpl;


/**
 * Servlet implementation class AdminLoginServlet
 */
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
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

	        // Validate the admin's login credentials using the AdminLoginDao
	        AdminLoginDao adminLoginDao = new AdminLoginImpl();
	        boolean isValidAdmin = adminLoginDao.validate(emailid, password);

	        if (isValidAdmin) {
	            // If the admin credentials are valid, create a session to keep the admin logged in
	            HttpSession session = request.getSession();
	            session.setAttribute("adminEmail", emailid);

	            // Redirect the admin to the AdminHome.jsp page
	            response.sendRedirect("AdminHome.jsp");
	        } else {
	            // If the admin credentials are invalid, create and login using the AdminLoginDao
	            AdminLoginBean adminLoginBean = new AdminLoginBean();
	            adminLoginBean.setEmailid(emailid);
	            adminLoginBean.setPassword(password);

	            adminLoginDao.saveAdmin(adminLoginBean);

	            // Now, as the admin is registered, we can consider them logged in, and proceed to AdminHome.jsp
	            HttpSession session = request.getSession();
	            session.setAttribute("adminEmail", emailid);

	            // Redirect the admin to the AdminHome.jsp page
	            response.sendRedirect("AdminHome.jsp");
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
