package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.model.ProjectManager;
import com.model.Registration;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String email = request.getParameter("t1");
		String uname = request.getParameter("t2");
		String pass = request.getParameter("t3");
		String phno = request.getParameter("t4");
		Registration rs = new Registration();
		rs.setEmail(email);
		rs.setUsername(uname);
		rs.setPassword(pass);
		rs.setPhno(phno);
		ProjectManager pm = new ProjectManager();
		String res = pm.isRegistration(rs);
		request.setAttribute("res", res);
		request.setAttribute("uname", uname);
		RequestDispatcher rq = request.getRequestDispatcher("home.jsp");
		rq.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
