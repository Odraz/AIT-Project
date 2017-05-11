<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div class="container">
	<div id="header-title">
		<a href="/AITProject">SmashIT</a>
	</div>		
	<%
		if(session.getAttribute("user") == null)
		{ 
	%>    	
		<button id="header-hamburger" type="button" class="header-toggle collapsed" data-toggle="collapse" data-target="#user-menu" aria-expanded="false" aria-controls="user-menu">&#9776;</button>
	<% 
		}
	%>  			   						
	<%
		if(session.getAttribute("user") == null)
		{ 
	%>    	
		<jsp:include page='FormLogin.jsp' />
	<% 
		}else{
	%>    
		<jsp:include page='UserMenu.jsp' />
	<% 		
		}
	%>	
</div>