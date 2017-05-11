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
#chartdiv3 {
  width: 100%;
  height: 500px;
}
</style>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv3", {
  "type": "pie",
  "theme": "none",
  "dataProvider": [ {
    "country": "Lithuania",
    "litres": 501.9
  }, {
    "country": "Czech Republic",
    "litres": 301.9
  }, {
    "country": "Ireland",
    "litres": 201.1
  }, {
    "country": "Germany",
    "litres": 165.8
  }, {
    "country": "Australia",
    "litres": 139.9
  }, {
    "country": "Austria",
    "litres": 128.3
  }, {
    "country": "UK",
    "litres": 99
  }, {
    "country": "Belgium",
    "litres": 60
  }, {
    "country": "The Netherlands",
    "litres": 50
  } ],
  "valueField": "litres",
  "titleField": "country",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );
</script>

<!-- HTML -->
<div id="chartdiv3"></div>
<div class="data-desc">
	<h2>Lorem ipsum</h2>
	<button id="btn-item-3>" class=btn btn-primary "<%if(session.getAttribute("user") == null){%>disabled<%}%>" onclick="addToCart(3)">Add to cart</button>
</div>