package com.demo.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.demo.bean.AdminLoginBean;
import com.demo.bean.ProductBean;
import com.demo.dao.ProductDao;
import com.demo.dao.ProductImpl;
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10,      // 10MB
maxRequestSize = 1024 * 1024 * 50)   // 50MB

/**
 * Servlet implementation class AddProductServlet
 */
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     //  ProductDao productDao;
	private static final String UPLOAD_DIRECTORY = "uploads";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/*
	 * @Override public void init() throws ServletException { // TODO Auto-generated
	 * method stub super.init(); SessionFactory sessionFactory = new
	 * Configuration().configure().addAnnotatedClass(ProductBean.class).
	 * buildSessionFactory(); productDao = new ProductImpl(sessionFactory); }
	 */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pname = request.getParameter("pname");
		  String pprice = request.getParameter("pprice");
			String pcolor = request.getParameter("pcolor");
			String pram = request.getParameter("pram");
			String pstorage = request.getParameter("pstorage");

        // Get the uploaded file from the request
        Part imagePart = request.getPart("imageFile");
        String imageName = imagePart.getSubmittedFileName();

        // Create the "uploads" directory if it doesn't exist
        String uploadPath = getServletContext().getRealPath("/") + UPLOAD_DIRECTORY;
        File uploadDirectory = new File(uploadPath);
        if (!uploadDirectory.exists()) {
            uploadDirectory.mkdirs();
        }

        // Save the image to the "uploads" directory
        File imageFile = new File(uploadPath + File.separator + imageName);
        try (InputStream input = imagePart.getInputStream();
             OutputStream output = new FileOutputStream(imageFile)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = input.read(buffer)) != -1) {
                output.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        ProductBean productBean = new ProductBean();
        productBean.setPname(pname);
        productBean.setPprice(pprice);
        productBean.setPcolor(pcolor);
        productBean.setPram(pram);
        productBean.setPstorage(pstorage);
        productBean.setImageUrl(imageName);

        // Call the DAO method to save the employee
        ProductDao productDao = new ProductImpl();
        productDao.addProduct(productBean);

        response.sendRedirect("AdminHome.jsp");
	}

		 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
