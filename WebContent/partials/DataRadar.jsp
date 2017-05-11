<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ait.models.Region"%>
<%@page import="ait.controllers.DataController"%>
<%@page import="java.util.ArrayList"%>		
<%
  ArrayList<Region> data = DataController.getData();
%>
<!-- Styles -->
<style>
#chartdiv4 {
  width: 100%;
  height: 500px;
}				
</style>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv4", {
  "type": "radar",
  "theme": "none",
  "dataProvider": [ {
    "country": "Czech Republic",
    "litres": 156.9
  }, {
    "country": "Ireland",
    "litres": 131.1
  }, {
    "country": "Germany",
    "litres": 115.8
  }, {
    "country": "Australia",
    "litres": 109.9
  }, {
    "country": "Austria",
    "litres": 108.3
  }, {
    "country": "UK",
    "litres": 99
  } ],
  "valueAxes": [ {
    "axisTitleOffset": 20,
    "minimum": 0,
    "axisAlpha": 0.15
  } ],
  "startDuration": 2,
  "graphs": [ {
    "balloonText": "[[value]] litres of beer per year",
    "bullet": "round",
    "lineThickness": 2,
    "valueField": "litres"
  } ],
  "categoryField": "country",
  "export": {
    "enabled": true
  }
} );
</script>

<!-- HTML -->
<div id="chartdiv4"></div>
<div class="data-desc">
	<h2>Lorem ipsum</h2>
	<button id="btn-item-2>" class="btn btn-primary <%if(session.getAttribute("user") == null){%>disabled<%}%>" onclick="addToCart(2)">Add to cart</button>
</div>