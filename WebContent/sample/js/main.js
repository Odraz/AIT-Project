/* Shopping Cart */
var shoppingCart = [];
var totalPrice = 0;

function addToCart(name, price){
	var item = {};

	item.Name = name;
	item.Price = price;
	
	totalPrice += price;
	
    shoppingCart.push(item);

    updateCart();
}

function removeFromCart(id){
	totalPrice -= shoppingCart[id].Price;
    shoppingCart.splice(id, 1);
    
    updateCart();
}

function updateCart(){	
	if(shoppingCart.length == 0){
		$('#cart').hide();
		$('#cart-msg').show();
	}else{
		$('#cart').show();
		$('#cart-msg').hide();
	}
	
	$('#cart-items').html('');
	
	var i = 0;
	shoppingCart.forEach(function(item){
		$("#cart-items").append("<li><h2>" + item.Name + " - " + item.Price + "</h2><button class=\"btn btn-lg btn-primary btn-block\"  onclick=\"removeFromCart(" + i + ")\">Remove from cart</button></li>");
		i++;
	});	
	
	$('#cart-total-price').html(totalPrice);	
}

/* Map */
var map;

AmCharts.ready(function() {
    map = new AmCharts.AmMap();


    map.colorSteps = 10;

    var dataProvider = {
        mapVar: AmCharts.maps.italyLow,
		
        areas: [{id:"VA", value: 100},
        		{id:"SM", value: 100},
        		{id:"FR-H", value: 100},
        		{id:"MT", value: 100},
        		{id:"IT_65", value: 100},
        		{id:"IT-77", value: 100},
        		{id:"IT-78", value: 100},
        		{id:"IT-72", value: 100},
        		{id:"IT-45", value: 100},
        		{id:"IT-36", value: 100},
        		{id:"IT-62", value: 100},
        		{id:"IT-42", value: 100},
        		{id:"IT-25", value: 100},
        		{id:"IT-57", value: 100},
        		{id:"IT-67", value: 100},
        		{id:"IT-21", value: 100},
        		{id:"IT-75", value: 100},
        		{id:"IT-88", value: 100},
        		{id:"IT-82", value: 100},
        		{id:"IT-52", value: 100},
        		{id:"IT-32", value: 100},
        		{id:"IT-55", value: 100},
        		{id:"IT-23", value: 100},
        		{id:"IT-34", value: 100},]
    };

    map.areasSettings = {
        autoZoom: true
    };
    map.dataProvider = dataProvider;

    var valueLegend = new AmCharts.ValueLegend();
    valueLegend.right = 10;
    valueLegend.minValue = "little";
    valueLegend.maxValue = "a lot!";
    map.valueLegend = valueLegend;

    map.write("mapdiv");
});

$(function() {	
	updateCart();
});
