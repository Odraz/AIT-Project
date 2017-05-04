<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<form action="../settings" method="post">
	<%
		if(session.getAttribute("settingsErrorMsg") != null)
		{ 
	%>    
	  	<strong>Warning!</strong> ${settingsErrorMsg}
	<% 
		}
	%>	
	<label for="username">Username</label>
	<input id="username" type="text" value="${user.username}" readonly>

	<label for="email">Email</label>
	<input id="email" type="email" placeholder="mail@example.com" name="email" value="${user.email}" readonly>
	
	<label for="firstname">First name</label>
	<input id="firstname" type="text" name="firstname" value="${user.firstname}" required>

	<label for="lastname">Last name</label>
	<input id="lastname" type="text" name="lastname" value="${user.lastname}" required>

	<label for="address">Address</label>
    <input id="address" type="text" name="address" value="${user.address}" required>

	<button type="submit">Save changes</button>
</form>