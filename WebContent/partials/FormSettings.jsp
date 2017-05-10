<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
<div id="settings">    
	<h1>Settings</h1> 
	<%
		if(session.getAttribute("settingsErrorMsg") != null)
		{ 
	%>    
	  <span class="warning">${settingsErrorMsg}</span>
	<% 
		}
	%>	
    
	<form id="form-registration" action="settings" method="post">		
	    <div class="form-item">
	   		<input id="username" type="text" name="username" value="${user.username}" readonly>
		</div>
		
		<div class="form-item">
			<input id="email" type="email" name="email" value="${user.email}" readonly>
		</div>
		
		<div class="form-item">
			<input id="firstname" type="text" name="firstname" placeholder="First name" value="${user.firstname}" required>
		</div>
		
		<div class="form-item">	
			<input id="lastname" type="text" name="lastname" placeholder="Last name" value="${user.lastname}" required>
		</div>
		
		<div class="form-item">
			<input id="address" type="text" name="address" placeholder="Address" value="${user.address}" required>
		</div>
		<button class="btn btn-big btn-secondary" type="submit">Save</button>
	</form>
</div>