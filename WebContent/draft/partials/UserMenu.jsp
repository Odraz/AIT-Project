<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<div id="header-user">
	${user.username}
</div>
<form action="logout">		
	<button class="btn btn-primary" type="submit">Sign out</button>
</form>