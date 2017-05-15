<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- JavaScripts -->
<script src="ammap/ammap.js" type="text/javascript"></script>
<script src="ammap/js/italyLow.js" type="text/javascript"></script>	    

<div id="mapdiv" style="width: 100%; height: 750px;"></div>
<div id="range-slider">
	<h1 id="range">2015</h1>
	<span>2001</span>
	<input type="range" min="2001" max="2015" value="2015" step="1" onchange="sliderChangeValue(this.value)" />
	<span>2015</span>		
</div>

<script>
	var map;	
	
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
	    valueLegend.color = "#FFFFFF";
	    map.valueLegend = valueLegend;
	
	    map.write("mapdiv");
	    map.invalidateSize();
	});
</script>