<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ait.models.Region"%>
<%@page import="ait.controllers.DataController"%>
<%@page import="java.util.ArrayList"%>		
<%
  ArrayList<Region> data = DataController.getData();
%>
	[{id: "home",
	  en: "home",
	  ru: "domov"},{
	  id: "home1",
	  en: "home1",
	  ru: "domov1"},{
	  id: "home2",
	  en: "home2",
	  ru: "domov2"},{
	  id: "home",
	  en: "home",
	  ru: "domov"}]	
	
	data.getItem("home", session.getAttribute("lang"))

<%
for(Region region : data){
%>
	<h2><%=region.getId()%> <%=region.getTitle()%></h2>
	<ul>|
<%
	for(Integer value : region.getData().values()){
%>
		<li> <%=value%> |</li>
<%
	}
	
%>
	</ul>
<%		
}
%>