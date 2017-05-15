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
  "dataProvider": dataTotal.slice(9,14),
  "valueAxes": [ {
    "axisTitleOffset": 20,
    "minimum": 0,
    "axisAlpha": 0.15
  } ],
  "startDuration": 2,
  "graphs": [ {
    "balloonText": "[[value]]",
    "bullet": "round",
    "lineThickness": 2,
    "valueField": "value"
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
	<h2>5 safest</h2>
	<button id="btn-item-2>" class="btn btn-primary <%if(session.getAttribute("user") == null){%>disabled<%}%>" <%if(session.getAttribute("user") != null){%>onclick="addToCart(2, 'radardiv', 'Radar graph')"<%}else{%>disabled title="Login first"<%}%>>Add to cart</button>
</div>