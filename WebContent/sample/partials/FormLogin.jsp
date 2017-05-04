<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<form action="../login" method="post">
	<%
		if(session.getAttribute("loginErrorMsg") != null)
		{ 
	%>    
	  <strong>Warning! </strong> ${loginErrorMsg}
	<% 
		}
	%>	
	<label for="email-login">Email</label>
    <input id="email-login" type="email" placeholder="mail@example.com" name="email" required>

    <label for="password-login">Password</label>
    <input id="password-login" type="password" name="password" required>
			
	<button type="submit">Sign in</button>
</form>