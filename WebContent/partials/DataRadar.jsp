<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- Styles -->
<style>
#radardiv {
  width: 100%;
  height: 500px;
}				
</style>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "radardiv", {
  "type": "radar",
  "theme": "none",
  "dataProvider": data.slice(0,6),
  "valueAxes": [ {
    "axisTitleOffset": 20,
    "minimum": 0,
    "axisAlpha": 0.15
  } ],
  "startDuration": 2,
  "graphs": [ {
    "balloonText": "[[value]] in [[highestYear]]",
    "bullet": "round",
    "lineThickness": 2,
    "valueField": "highestValue"
  } ],
  "categoryField": "title",
  "export": {
    "enabled": true
  }
} );
</script>

<!-- HTML -->
<div id="radardiv"></div>
<div class="data-desc">
	<h2>Best score</h2>
	<button id="btn-item-2>" class="btn btn-primary <%if(session.getAttribute("user") == null){%>disabled<%}%>" onclick="addToCart(2, 'Radar graph')">Add to cart</button>
</div>