<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Sample page</title>
				
   		<script src="../ammap/ammap.js" type="text/javascript"></script>
		<script src="../ammap/js/italyLow.js" type="text/javascript"></script>	    
		
		<link rel="stylesheet" href="../ammap/ammap.css" type="text/css">
		<link href="css/main.css" rel="stylesheet">		
	</head>
	<body>
		<header>
			<span>Header</span>
		</header>
		
		<hr />
		
		<main>	
			<div id="login">		
				<%
					if(session.getAttribute("user") == null)
					{ 
				%>    
					<h1>Login form</h1>	
					<jsp:include page='partials/FormLogin.jsp' />
				<% 
					}else{
				%>    
					<jsp:include page='partials/UserInfo.jsp' />
				<% 		
					}
				%>				
			</div>
			
			<hr />
			
			<div id="registration">
				<h1>Registration form</h1>
				<jsp:include page='partials/FormRegistration.jsp' />
			</div>
			
			<hr />
			
			<div id="settings">		
				<h1>Settings form</h1>
				<%
					if(session.getAttribute("user") == null)
					{ 
				%>    
					<span>Login first</span>
				<% 
					}else{
				%>    
					<jsp:include page='partials/FormSettings.jsp' />
				<% 		
					}
				%>	
			</div>
			
			<hr/>
			
			<div id="items">
				<h1>Items</h1>
				<jsp:include page='partials/ItemList.jsp' /> 
			</div>
			
			<hr/>
			
			<div id="shopping-cart">
				<h1>Shopping cart</h1>
				<jsp:include page='partials/ShoppingCart.jsp' /> 
			</div>
			
			<hr/>
			
			<div id="map">
				<h1>Map</h1>
				<jsp:include page='partials/Map.jsp' /> 
			</div>
			
			<hr />
			
			<div id="data">
				<h1>Data</h1>
				<jsp:include page='partials/DataList.jsp' /> 
			</div>
		</main>
		
		<hr />
		
		<footer>
			<span>Footer</span>
		</footer>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>    		   	   		
	    <script src="js/main.js"></script>
	</body>
</html>