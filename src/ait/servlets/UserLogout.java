package ait.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLogout extends HttpServlet {
	 static final long serialVersionUID = 1L;
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	  
        request.getSession().setAttribute("user", null);
        request.getSession().setAttribute("loginErrorMsg", null);
        request.getSession().setAttribute("registrationErrorMsg", null);
        response.sendRedirect("/AITProject");
    } 
}
