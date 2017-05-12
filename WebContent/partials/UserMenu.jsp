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
			<span id="cart-counter"></span>
		</a>
	</div>
	
	<div id="header-menu" class="menu-dropdown">
		<a class="menu-item" href="settings" >Settings</a>
		<a class="menu-item" href="logout" >Sign out</a>	
	</div>
	
	<div id="header-menu-cart" class="menu-dropdown">		
		
	</div>
</div>