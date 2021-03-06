package ait.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ait.controllers.UserController;
import ait.exceptions.DuplicateEmailException;
import ait.exceptions.DuplicateUsernameException;
import ait.models.User;

public class UserRegistration extends HttpServlet {
	 static final long serialVersionUID = 1L;
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	 	  
		try{
			User user = UserController.registerUser(new User(
				request.getParameter("username"),
				request.getParameter("email"),
			    request.getParameter("firstname"),
			    request.getParameter("lastname"),
			    request.getParameter("address"),
			    request.getParameter("password")));
		    if (user != null) {
		        request.getSession().setAttribute("user", user);
		        request.getSession().setAttribute("loginErrorMsg", null);
		        request.getSession().setAttribute("registrationErrorMsg", null);
	        	
		        response.sendRedirect("/AITProject");
		    } else {
		    	request.getSession().setAttribute("registrationErrorMsg", "Something went wrong");
		    	response.sendRedirect(request.getHeader("Referer"));
		    }		    
		}catch(DuplicateUsernameException ex){
			request.getSession().setAttribute("registrationErrorMsg", ex.getMessage());
			response.sendRedirect(request.getHeader("Referer"));
		}catch(DuplicateEmailException ex){
			request.getSession().setAttribute("registrationErrorMsg", ex.getMessage());
			response.sendRedirect(request.getHeader("Referer"));
		}
    } 
}
