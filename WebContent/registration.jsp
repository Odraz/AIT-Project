<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Road accidents in Italy - Draft</title>
		
		<!-- JavaScripts -->
		<script src="ammap/ammap.js" type="text/javascript"></script>
		<script src="ammap/js/italyLow.js" type="text/javascript"></script>	    
		
		<!-- CSS -->
		<link rel="stylesheet" href="ammap/ammap.css" type="text/css">
		<link href="css/main.css" rel="stylesheet">		
	</head>
	<body>
		<header>
			<jsp:include page='partials/Header.jsp' />
		</header>
		<main>
			<div class="container">				
				<jsp:include page='partials/FormRegistration.jsp' /> 
			</div>
		</main>			
		
		<footer>
			<jsp:include page='partials/Footer.jsp' />			
		</footer>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>    		   	   		
	    <script src="js/main.js"></script>	
	</body>
</html>