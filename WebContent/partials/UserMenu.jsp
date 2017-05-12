<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div id="user-menu">	
	<div id="header-username">		
		<span>${user.username}</span>
	</div>	
	
	<div id="header-user">		
		<img class="icon" src="css/img/user.svg" />
	</div>
	
	<div id="header-cart">		
		<a>
			<img class="icon" src="css/img/shop.svg" />
			<span id="lblCartCount">3</span>
		</a>
	</div>
	
	<div id="header-menu" class="menu-dropdown">
		<a class="menu-item" href="settings" >Settings</a>
		<a class="menu-item" href="logout" >Sign out</a>	
	</div>
	
	<div id="header-menu-cart" class="menu-dropdown">		
		<div class="cart-item">
			<div class="cart-item-link"><a href="#" >Bundle 1</a></div>
			<div class="cart-item-img"><img class="icon" src="css/img/remove.svg" /></div>
		</div>
		<div class="cart-item">
			<div class="cart-item-link"><a href="#" >Bundle 2</a></div>
			<div class="cart-item-img"><img class="icon" src="css/img/remove.svg" /></div>
		</div>
		<div class="cart-item">
			<div class="cart-item-link"><a href="#" >Bundle 300</a></div>
			<div class="cart-item-img"><img class="icon" src="css/img/remove.svg" /></div>
		</div>
		<div class="cart-button">
			<button class="btn btn-secondary">Download</button>
		</div>
	</div>
</div>