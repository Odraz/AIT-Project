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
  "dataProvider": dataTotal,
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
	<button id="btn-item-3>" class="btn btn-primary <%if(session.getAttribute("user") == null){%>disabled<%}%>" <%if(session.getAttribute("user") != null){%>onclick="addToCart(3, 'piediv', 'Pie graph')"<%}else{%>disabled title="Login first"<%}%>>Add to cart</button>
</div>