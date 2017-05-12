<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- Styles -->
<style>
#piediv {
  width: 100%;
  height: 500px;
}
</style>

<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "piediv", {
  "type": "pie",
  "theme": "none",
  "dataProvider": data,
  "valueField": "value",
  "titleField": "title",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );
</script>

<!-- HTML -->
<div id="piediv"></div>
<div class="data-desc">
	<h2>Summary</h2>
	<button id="btn-item-3>" class=btn btn-primary "<%if(session.getAttribute("user") == null){%>disabled<%}%>" onclick="addToCart(3, 'Pie graph')">Add to cart</button>
</div>