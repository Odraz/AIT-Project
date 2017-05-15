<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="ait.controllers.DataController"%>
<%@page import="java.util.ArrayList"%>		
<%@page import="ait.models.Region"%>
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
		<%
		  String dataTotal = DataController.getDataDesc();
		  String data = DataController.getDataByYears();
		  String years = DataController.getYears();
		%>
		
		<script>
			var _data = <%=data%>;
			var data = _data[14];
			var dataTotal = <%=dataTotal%>;
			var years = <%=years%>;
		</script>
			
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
					<h1 class="center">Project SmashIT</h1>
					<div class="row">
						<div class="col-4">
							<h2>I.Stat</h2>
							<p>All data are taken from the warehouse of statistics, I.Stat, currently produced by the Italian National Institute of Statistics. Data represents the number of vehicles involved in road accidents accros the years from 2001 until 2015 incl.</p>
						</div>
						<div class="col-4">
							<h2>Advanced Internet Technologies</h2>
							<p>This website was created thanks to the teaching and guidance of professors Claus Pahl and Guohui Xiao at Free University of Bozen-Bolzano during the course Advanced Internet Technologies.</p>
						</div>
						<div class="col-4">
							<h2>Authors</h2>
							<p>All has been developed by two master students of Computer Science. Noah Cohen, data engineering student from Michigan (USA), currently stuyding at Free University of Bozen-Bolzano and Tomas Pouzar, student of applied informatics from Brno (The Czech Republic), studying in Bolzano for 1 semester thanks to Eramus+ programme.</p>
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
	    <script src="js/export.js"></script>	
	</body>
</html>