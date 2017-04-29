<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
				
	    <link href="css/main.css" rel="stylesheet">
		<title>AIT Project</title>
	</head>
	<body>
		<%@page import="ait.DBConnector"%>
		<%
		   DBConnector connector = new DBConnector();		   
		%>
		 	
		<form id="form" action="DBConnector" method="get">					
	    	<label for="name" >Name</label>
	    	<input name="name" type="text" id="name" placeholder="Name" required="true">
		    
		    <label for="email">Email</label>
		    <input name="email" type="email" id="email" placeholder="Email" required="true">			    
		  	
		  	<label for="password">Password</label>
		    <input name="password" type="password" id="password" placeholder="Password" required="true" >
		    
		    <button type="submit">Register</button>						
		</form>
	</body>	
</html>