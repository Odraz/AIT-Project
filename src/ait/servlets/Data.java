package ait.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ait.controllers.DataController;
import ait.models.Region;


public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Region> data = DataController.getData();		    
		    
	    if (data != null) {
	        request.getSession().setAttribute("data", data);
	        request.getSession().setAttribute("dataErrorMsg", null);	        
	    } else {
	    	request.getSession().setAttribute("dataErrorMsg", "Something went wrong");
	    }
	    
	    response.sendRedirect(request.getHeader("Referer"));
	}
}
