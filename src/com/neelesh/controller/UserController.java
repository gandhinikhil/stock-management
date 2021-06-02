package com.neelesh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.neelesh.data.UserDAOImpl;
import com.neelesh.model.User;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAOImpl userUtil = null;
	
	@Override
	public void init() throws ServletException {
		
		super.init();
		userUtil = new UserDAOImpl();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String command = request.getParameter("command");
			
			switch(command) {
				case "ADD":
					addUser(request, response);
					break;
					
				case "USER":
					getUser(request, response);
					break;
				
				case "LOGOUT":
					logout(request, response);
					break;
			}
		}
		catch(Exception e) {
			throw new ServletException(e);
		}
		
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		String resource = "login.jsp";
		String message = null;
		
		session.invalidate();
		message = "Successfully Logged Out";
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);			
		
		rd.forward(request, response);

//		String resource = "login.jsp";
//		String message = null;
//		
//		if(session.isNew()) {
//			message = "Session Expired : TRY AGAIN";
//			RequestDispatcher rd = request.getRequestDispatcher(resource);
//			request.setAttribute("msg", message);			
//			
//			rd.forward(request, response);
//		}
		
	}

	private void getUser(HttpServletRequest request, HttpServletResponse response) throws Exception{

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		String resource = "login.jsp";
		String message = null;
		
		try {
			User user = userUtil.getUser(userId);
                       
			//)
			if(user.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(500);
				
				session.setAttribute("user", user);
				resource = "ItemController";
			}
			else {
				message = "Invalid Password : TRY AGAIN";
			}
		}
		catch(Exception e) {
			message = e.getMessage();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
		
	}

	private void addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String userId = request.getParameter("userID");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		
		String resource = "registration.jsp";
		String message = null;
		
		User user = new User(userId, password, firstName, lastName, address, city);
		
		try {
			userUtil.addUser(user);
			message = "Registered Successfully : Please LOGIN";
			resource = "login.jsp";
		}
		catch(Exception e) {
			message = e.getMessage();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			doGet(request, response);
		
	}

}
