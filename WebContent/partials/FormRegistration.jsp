<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
<div id="registration">    
	<h1>Register</h1> 
	<%
		if(session.getAttribute("registrationErrorMsg") != null)
		{ 
	%>    
	  <span class="warning">${registrationErrorMsg}</span>
	<% 
		}
	%>	
    
	<form id="form-registration" action="registration" method="post">		
	    <div class="form-item">
	   		<input id="username" type="text" name="username" placeholder="Username" required>
		</div>
		
		<div class="form-item">
			<input id="email" type="email" name="email" placeholder="E-mail" required>
		</div>
		
		<div class="form-item">
			<input id="password" type="password" name="password" placeholder="Password" required>
		</div>
		
		<div class="form-item">
			<input id="firstname" type="text" name="firstname" placeholder="First name" required>
		</div>
		
		<div class="form-item">	
			<input id="lastname" type="text" name="lastname" placeholder="Last name" required>
		</div>
		
		<div class="form-item">
			<input id="address" type="text" name="address" placeholder="Address" required>
		</div>
		<button class="btn btn-big btn-secondary" type="submit">Sign up</button>
	</form>
</div>