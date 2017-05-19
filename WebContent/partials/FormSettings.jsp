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
    
	<form id="form-registration" action="usersettings" method="post">		
	    <div class="form-item">
	    	<div class="form-label">
	    		<label>Username</label>
	    	</div>
	    	<div class="form-input">
	   			<input id="username" type="text" name="username" value="${user.username}" readonly>
   			</div>
		</div>
		
		<div class="form-item">
			<div class="form-label">
				<label>E-mail</label>
			</div>
			<div class="form-input">
				<input id="email" type="email" name="email" value="${user.email}" readonly>
			</div>
		</div>
		
		<div class="form-item">
			<div class="form-label">
				<label>First name</label>
			</div>
			<div class="form-input">
				<input id="firstname" type="text" name="firstname" placeholder="First name" value="${user.firstname}" required>
			</div>
		</div>
		
		<div class="form-item">	
			<div class="form-label">
				<label>Last name</label>
			</div>
			<div class="form-input">
				<input id="lastname" type="text" name="lastname" placeholder="Last name" value="${user.lastname}" required>
			</div>
		</div>
		
		<div class="form-item">
			<div class="form-label">
				<label>Address</label>
			</div>
			<div class="form-input">
				<input id="address" type="text" name="address" placeholder="Address" value="${user.address}" required>
			</div>
		</div>
		<div class="form-item">
			<div class="form-label">
				<label></label>
			</div>
			<div class="form-input">
				<button class="btn btn-big btn-secondary" type="submit">Save</button>
			</div>
		</div>
		
	</form>
</div>