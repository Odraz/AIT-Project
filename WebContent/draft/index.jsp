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
		<link href="draft/css/main.css" rel="stylesheet">		
	</head>
	<body>
		<header>
			<div class="container">
				<div id="header-title">
					<a href="/AITProject">Road accidents</a>
				</div>					
				<button type="button" class="header-toggle collapsed" data-toggle="collapse" data-target="#user-menu" aria-expanded="false" aria-controls="user-menu">
		            &#9776;
	          	</button>
	          	<div id="user-menu">							
					<%
						if(session.getAttribute("user") == null)
						{ 
					%>    	
						<jsp:include page='partials/FormLogin.jsp' />
					<% 
						}else{
					%>    
						<jsp:include page='partials/UserMenu.jsp' />
					<% 		
						}
					%>	
				</div>
			</div>
		</header>
		<main>
			<div id="map">
				<jsp:include page='partials/Map.jsp' /> 
			</div>
			<div id="shop">
				<div class="container">
					<h1 class="center">Download data</h1>				 
				 	<%
						if(session.getAttribute("user") == null)
						{ 
					%>    
						<h3 class="center">Login first</h3>
					<% 
						}else{
					%>    
						<jsp:include page='partials/DataList.jsp' />
					<% 		
						}
					%>	
				</div>
			</div>
			<div id="content">
				<div class="container">
					<h1 class="center">Lorem ipsum dolor sit amet.</h1>
					<div class="row">
						<div class="col-4">
							<h2>Lorem ipsum</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quam odio, laoreet auctor lectus quis, vestibulum tristique nisl. Pellentesque lobortis urna erat, sit amet sagittis lectus bibendum non. Vivamus ultricies metus mauris, in dignissim est pretium non.</p>
						</div>
						<div class="col-4">
							<h2>Lorem ipsum</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quam odio, laoreet auctor lectus quis, vestibulum tristique nisl. Pellentesque lobortis urna erat, sit amet sagittis lectus bibendum non. Vivamus ultricies metus mauris, in dignissim est pretium non.</p>
						</div>
						<div class="col-4">
							<h2>Lorem ipsum</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quam odio, laoreet auctor lectus quis, vestibulum tristique nisl. Pellentesque lobortis urna erat, sit amet sagittis lectus bibendum non. Vivamus ultricies metus mauris, in dignissim est pretium non.</p>
						</div>
					</div>					
				</div> 
			</div>
		</main>			
		
		<footer>
			<div class="container">
				<hr/>
				<p>© 2017 Noah Cohen, Tomáš Pouzar</p>
			</div>
		</footer>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>    		   	   		
	    <script src="draft/js/main.js"></script>	
	</body>
</html>