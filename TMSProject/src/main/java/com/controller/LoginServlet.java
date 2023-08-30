package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.model.Login;
import com.model.ProjectManager;
import com.model.Registration;
import com.model.Tender;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s = request.getParameter("t1");
		String p = request.getParameter("t2");
		String t = request.getParameter("t3");
		Login l = new Login();
		l.setEmail(s);
		l.setPassword(p);
		if(t == null)
		{
			l.setAdmin(false);
		}
		else
		{
			l.setAdmin(true);
		}
		ProjectManager pm = new ProjectManager();
		Registration s3 = pm.isLogin(l);
//		request.setAttribute("res", s3);
		
		if(s3 == null)
		{
			PrintWriter pw = response.getWriter();
			pw.println("<h2>"+s3+"</h2>");
		}
		else
		{
			HttpSession session = request.getSession();
			System.out.println(s3.getEmail()+" "+s3.getPassword()+" "+s3.getPhno()+" "+s3.getUsername());
			List<Tender> al = pm.gettingTenderData();
//			al.add(new Tender("a","abc", "c", "d", "e", "d", "f", "w", "z"));
//			al.add(new Tender("b","abc", "c", "d", "e", "d", "f", "w", "z"));
			System.out.println(al);
			session.setAttribute("cards", al);
			session.setAttribute("LoginData", s3);
			response.sendRedirect("home.jsp");
//			request.setAttribute("uname", s3);
//			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
