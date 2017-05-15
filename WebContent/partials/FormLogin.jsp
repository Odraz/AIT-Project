<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
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
			<button class="btn btn-secondary" type="submit" name="btn-sign-up" value="SignUp" formnovalidate>Sign up</button>
		</form>
	</div>
</div>
		