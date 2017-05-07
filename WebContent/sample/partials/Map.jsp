<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ait.controllers.DataController"%>
<%@page import="java.util.ArrayList"%>		
<%@page import="ait.models.Region"%>
<%
  ArrayList<Region> data = DataController.getData();
%>

<div id="mapdiv" style="width: 100%; background-color:#EEEEEE; height: 750px;"></div>

<script>
	var map;
	var data = [<% 
	            for(int i = 0; i < data.size(); i++) {
	            	%>{id:"<%= data.get(i).getId() %>",
	            	   value:<%= data.get(i).getYear(2014)%>}
	            	   
	            	   <%= i + 1 < data.size() ? "," : "" %>
	           	<% } %>
	           	];
	
	AmCharts.ready(function() {
	    map = new AmCharts.AmMap();
	    
	    map.areasSettings = {
	        autoZoom: true,
	        balloonText: "[[title]]: <strong>[[value]]</strong>"
	    };	    
	    map.backgroundAlpha = 1;
	    map.backgroundColor = "#717CB7";
	    map.colorSteps = 10;
	    map.dataProvider = {
	        mapVar: AmCharts.maps.italyLow,			
	        areas: data
	    };	    
	    map.theme = "light";	
	    
	    var valueLegend = new AmCharts.ValueLegend();
	    valueLegend.right = 10;
	    valueLegend.minValue = "little";
	    valueLegend.maxValue = "a lot!";
	    map.valueLegend = valueLegend;
	
	    map.write("mapdiv");
	    map.invalidateSize();
	});
</script>