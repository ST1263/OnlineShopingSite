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
 * Servlet implementation class EditUserInfoData
 */
public class EditUserInfoData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserInfoData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int uid = Integer.parseInt(request.getParameter("uid"));
		String name = request.getParameter("name");
		String emailid = request.getParameter("emailid");
		String mobile = request.getParameter("mobile");
		String birthdate = request.getParameter("birthdate");
		//int aid = Integer.parseInt(request.getParameter("aid"));
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String taluka = request.getParameter("taluka");
		String district = request.getParameter("district");
		int pincode = Integer.parseInt(request.getParameter("pincode"));
		UserProfileBean ud = new UserProfileBean(uid, name, emailid, name, emailid, mobile, birthdate, address, city, state, district, taluka, pincode);
		UserProfileDao udo = new UserProfileImpl();
		udo.updateUser(ud);
		out.println("<h2>Record Updated..</h2>");
		RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
		rd.forward(request, response);
		//out.println("<h2><a href='index.jsp'>Go to Index Page</a></h2>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
