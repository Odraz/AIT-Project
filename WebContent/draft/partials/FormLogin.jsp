<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<div id="header-form">
	<div id="login">	    
		<form id="form-login" action="login" method="post">
			<%
				if(session.getAttribute("loginErrorMsg") != null)
				{ 
			%>    
			  <span class="warning">${loginErrorMsg}</span>
			<% 
				}
			%>	
		    <input id="email-login" type="email" placeholder="E-mail" name="email" required>
		    <input id="password-login" type="password" placeholder="Password" name="password" required>
					
			<button class="btn btn-primary" type="submit" name="btn-sign-in" value="SignIn">Sign in</button>
			<button class="btn btn-secondary" type="submit" name="btn-sign-up" value="SignUp">Sign up</button>
		</form>
	</div>
</div>
		