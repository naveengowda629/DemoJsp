package com.ty;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlets")
public class DemoServlets extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException   {
		String name="SHIVA ABCD"; 
		
		request.setAttribute("label", name);
		request.getRequestDispatcher("display.jsp").forward(request, response);
		
		
	}

}
