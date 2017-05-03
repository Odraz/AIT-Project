<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
				
	    <link href="css/main.css" rel="stylesheet">
		<title>AIT Project</title>
	</head>
	<body>
		<%@page import="ait.DBConnector"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="ait.Region"%>
		<%@page import="java.util.ArrayList"%>		
		<%
		   DBConnector connector = new DBConnector();
		   ResultSet data = connector.getAccidents();
		   ArrayList<Region> regions = connector.getRegions();
		%>
		
		<p>		
			<%
				if(data != null){
					while (data.next()){
						out.print(data.getString(1));
						for(int i = 2; i < 16; ++i){					
							out.print(" | " + data.getString(i));
						}
						
						out.print("<br />");
					}
				}
			
				for(Region region : regions){
					out.print(region.getTitle());
					for(Integer value : region.getData().values()){
						out.print("|" + value);
					}
					
					out.println();
				}
			%>
		</p>	
	</body>
</html>