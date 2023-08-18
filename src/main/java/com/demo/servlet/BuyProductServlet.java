package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.TransactionBean;
import com.demo.bean.UserProfileBean;
import com.demo.dao.TransactionDao;
import com.demo.dao.TransactionDaoImpl;
import com.demo.dao.UserProfileDao;
import com.demo.dao.UserProfileImpl;






/**
 * Servlet implementation class BuyProductServlet
 */
public class BuyProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TransactionDao ud;
    

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pname = request.getParameter("pname");
		String pprice = request.getParameter("pprice") ;
		String pqty = request.getParameter("pqty");
		String ptotal = request.getParameter("ptotal");
		TransactionBean ub1 = new TransactionBean(pname, pprice, pqty, ptotal);
		RequestDispatcher rd ;
		ud = new TransactionDaoImpl();
		ud.saveTransaction(ub1);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if(ub1!=null)
		{
			rd = request.getRequestDispatcher("orderConfirmation.jsp");
			rd.forward(request, response);
		}
		else
		{
			out.println("<h2 style='color:red'>Sorry  Failed..Try Again.. </h2>");
			rd = request.getRequestDispatcher("product-details.jsp");
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
