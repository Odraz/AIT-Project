<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Road accidents in Italy</title>
		
		<!-- Amcharts -->		
		<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>	
		<script src="https://www.amcharts.com/lib/3/serial.js"></script>
		<script src="https://www.amcharts.com/lib/3/pie.js"></script>				
		<script src="https://www.amcharts.com/lib/3/radar.js"></script>
		<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
		<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>	
		<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
		<!-- CSS -->
		<link rel="stylesheet" href="ammap/ammap.css" type="text/css">
		<link href="css/main.css" rel="stylesheet">		
	</head>
	<body>		
		<header>
			<jsp:include page='partials/Header.jsp' />
		</header>
		<main>
			<div id="map">
				<jsp:include page='partials/Map.jsp' /> 
			</div>
			<div id="data">
				<div class="container">
					<h1 class="center">15 years of accidents</h1>				 
						<div class="row row-data-1">
							<div class="col-6">								
								<jsp:include page='partials/DataColumn.jsp' />								
							</div>
							<div class="col-6">
								<jsp:include page='partials/DataLine.jsp' />
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<jsp:include page='partials/DataRadar.jsp' />	
							</div>
							<div class="col-6">
								<jsp:include page='partials/DataPie.jsp' />							
							</div>
						</div>
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
			<jsp:include page='partials/Footer.jsp' />			
		</footer>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>    		   	   		
	    <script src="js/main.js"></script>	
	</body>
</html>