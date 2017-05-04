<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<form action="../registration" method="post">
	<%
		if(session.getAttribute("registrationErrorMsg") != null)
		{ 
	%>    
		<strong>Warning!</strong> ${registrationErrorMsg}
	<% 
		}
	%>	
  	<label for="username">Username</label>
   	<input id="username" type="text"name="username" required>

	<label for="email">Email</label>
	<input id="email" type="email" placeholder="mail@example.com" name="email" required>

	<label for="password">Password</label>
	<input id="password" type="password" name="password" required>

	<label for="firstname">First name</label>
	<input id="firstname" type="text" name="firstname" required>

	<label for="lastname">Last name</label>
	<input id="lastname" type="text" name="lastname" required>

	<label for="address">Address</label>
	<input id="address" type="text" name="address" required>

	<button type="submit">Sign up</button>
</form>