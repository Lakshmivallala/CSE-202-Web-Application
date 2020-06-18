package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String uname = request.getParameter("uname");
	String pass = request.getParameter("pass");
	
	LoginDao ld = new LoginDao();
	
	
	if(ld.check(uname, pass)) {
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);
		response.sendRedirect("index.jsp");
	}
	else {
		response.sendRedirect("login.jsp");
	}
	}

}
