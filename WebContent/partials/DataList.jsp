<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ait.models.Region"%>
<%@page import="ait.controllers.DataController"%>
<%@page import="java.util.ArrayList"%>		
<%
  ArrayList<Region> data = DataController.getData();
%>
	
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