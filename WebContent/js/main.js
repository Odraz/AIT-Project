/* Shopping Cart */
var shoppingCart = [];

function addToCart(name, price){
	var item = {};

	item.Name = name;
    shoppingCart.push(item);

    updateCart();
}

function removeFromCart(id){
    shoppingCart.splice(id, 1);
    
    updateCart();
}

function updateCart(){	
	if(shoppingCart.length == 0){
		
	}else{
		
	}
	
	var i = 0;
	shoppingCart.forEach(function(item){	
		i++;
	});	
	
}

$( "#header-hamburger" ).click(function() {
	$( "#header-form" ).slideToggle("fast");
});

$( "#header-user" ).click(function() {
	$( "#header-menu" ).slideToggle("fast");
	$( "#header-menu-cart" ).slideUp("fast");
});

$( "#header-cart" ).click(function() {
	$( "#header-menu-cart" ).slideToggle("fast");
	$( "#header-menu" ).slideUp("fast");
});

$(function() {	
	updateCart();
});