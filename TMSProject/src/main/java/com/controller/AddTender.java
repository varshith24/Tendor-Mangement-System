package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.model.ProjectManager;
import com.model.Tender;

import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AddTender
 */
public class AddTender extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTender() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		String tendertitle = request.getParameter("tenderTitle");
		String tenderimage = request.getParameter("tenderImage");
		String org = request.getParameter("organization");
		String closingDate = request.getParameter("closingDate");
		String description = request.getParameter("description");
		String contactp= request.getParameter("contactPerson");
		String contactEmail = request.getParameter("contactEmail");
		String contactPhone = request.getParameter("contactPhone");
		Tender t = new Tender( userid ,tendertitle, tenderimage, org, closingDate, description, contactp, contactEmail, contactPhone);
		ProjectManager pm = new ProjectManager();
		String ack = pm.isTender(t);
		System.out.println(ack);
		response.sendRedirect("home.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
