<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- Styles -->
<style>
#columndiv {
	width		: 100%;
	height		: 500px;
	font-size	: 11px;
}					
</style>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "columndiv", {
  "type": "serial",
  "theme": "none",
  "dataProvider": data.slice(0,5),
  "valueAxes": [ {
    "gridColor": "#FFFFFF",
    "gridAlpha": 0.2,
    "dashLength": 0
  } ],
  "gridAboveGraphs": true,
  "startDuration": 1,
  "graphs": [ {
    "balloonText": "[[category]]: <b>[[value]]</b>",
    "fillAlphas": 0.8,
    "lineAlpha": 0.2,
    "type": "column",
    "valueField": "value"
  } ],
  "chartCursor": {
    "categoryBalloonEnabled": false,
    "cursorAlpha": 0,
    "zoomable": false
  },
  "categoryField": "title",
  "categoryAxis": {
    "gridPosition": "start",
    "gridAlpha": 0,
    "tickPosition": "start",
    "tickLength": 20
  },
  "export": {
    "enabled": true
  }

} );
</script>

<!-- HTML -->
<div id="columndiv"></div>
<div class="data-desc">
	<h2>Top 5</h2>
	<button id="btn-item-0>" class="btn btn-primary <%if(session.getAttribute("user") == null){%>disabled<%}%>" onclick="addToCart(0, 'Column graph')">Add to cart</button>
</div>