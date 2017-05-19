/* Shopping Cart */
var shoppingCart = [];

if(sessionStorage.shoppingCart != undefined && sessionStorage.shoppingCart != "[]"){
	shoppingCart = JSON.parse(sessionStorage.getItem("shoppingCart"));
}

function addToCart(id, idcss, name){
	var item = {};

	item.Id = id;
	item.IdCss = idcss;
	item.Name = name;
    shoppingCart.push(item);

    updateCart();
}

function removeFromCart(id){
	var item = shoppingCart[id];
    shoppingCart.splice(id, 1);    
	
    updateCart();
}

function appendDownloadButton(element){
	element.append("<div class=\"cart-button\">\
						<button class=\"btn btn-secondary\" onclick=\"exportReport(shoppingCart)\">Download PDF</button>\
					</div>");
}

function updateCart(){	
	if(shoppingCart.length == 0){
		$('#cart-counter').hide();
		$( "#header-cart" ).addClass("empty");
		$( "#header-menu-cart" ).slideUp("fast");
	}else{
		$('#cart-counter').show();
		$( "#header-cart" ).removeClass("empty");
	}
	
	$('#header-menu-cart').html('');	
	
	var i = 0;
	shoppingCart.forEach(function(item){
		$("#header-menu-cart").append("<div id=\"cart-item-\"" + i + " class=\"cart-item\">\
										 <div class=\"cart-item-link\"><a href=\"#\" >" + item.Name + "</a></div>\
										 <div  id=\"cart-remove-item-\"" + i + " class=\"cart-item-img\"><img class=\"icon\" src=\"css/img/remove.svg\" onclick=\"removeFromCart(" + i + ")\"/></div>\
									   </div>");
		i++;
	});	
	
	appendDownloadButton($("#header-menu-cart"));
	
	$('#cart-counter').html(shoppingCart.length);
	
	sessionStorage.setItem("shoppingCart", JSON.stringify(shoppingCart));
	
	if($("#user-menu").is(":visible")){
		updateButtons();
	}
}

function updateButtons(){
	for(var i = 0; i < 4; i++){
		if(shoppingCart.filter(function(item) { return item.Id == i }).length > 0){
			$('#btn-item-' + i).addClass('disabled');
			$('#btn-item-' + i).attr("disabled", true);
			$('#btn-item-' + i).attr("title", "In cart");
			$('#btn-item-' + i).html("In cart");
		}else{
			$('#btn-item-' + i).removeClass("disabled");
			$('#btn-item-' + i).attr("disabled", false);
			$('#btn-item-' + i).attr("title", "Add to cart");
			$('#btn-item-' + i).html("Add to cart");
		}
	}
}

$( "#header-hamburger" ).click(function() {
	$( "#header-form" ).slideToggle("fast");
});

$( "#header-user" ).click(function() {
	$( "#header-menu" ).slideToggle("fast");
	$( "#header-menu-cart" ).slideUp("fast");
});

$( "#header-cart" ).click(function() {
	if(!$( "#header-cart" ).hasClass( "empty" )){
		$( "#header-menu-cart" ).slideToggle("fast");
		$( "#header-menu" ).slideUp("fast");
	}
});

function sliderChangeValue(newValue)
{
	$('#range').html(newValue)
	map.dataProvider = {
        mapVar: AmCharts.maps.italyLow,			
        areas: _data[newValue - 2001]
    };
    map.validateData();
}

function logout(){
	sessionStorage.setItem("shoppingCart", "[]");
}

function downloadCSV() { 
    filename = 'road_accidents.csv';
    csv = 'data:text/csv;charset=utf-8,' + csv;
    
    var data = encodeURI(csv);

    link = document.createElement('a');
    link.setAttribute('href', data);
    link.setAttribute('download', filename);
    link.click();
}

$(function() {	
	updateCart();
});