<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/19
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.jsp">Sneakerhead</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Basketball<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Brand</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?brand=nike">NIKE</a></li>
											<li><a class="list" href="_products.jsp?brand=adidas">ADIDAS</a></li>
											<li><a class="list" href="_products.jsp?brand=ua">UNDER ARMOUR</a></li>
											<li><a class="list" href="_products.jsp?brand=aj">AIR JORDAN</a></li>
											<li><a class="list" href="_products.jsp?brand=vans">VANS</a></li>
											<li><a class="list" href="_products.jsp?brand=converse">CONVERSE</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Function</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?function=high">High</a></li>
											<li><a class="list" href="_products.jsp?function=middle">Middle</a></li>
											<li><a class="list" href="_products.jsp?function=low">Low</a></li>
											<li><a class="list" href="_products.jsp?function=elite">Elite</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Size</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?size=40">≤40</a></li>
											<li><a class="list" href="_products.jsp?size=41">41</a></li>
											<li><a class="list" href="_products.jsp?size=42">42</a></li>
											<li><a class="list" href="_products.jsp?size=42.5">42.5</a></li>
											<li><a class="list" href="_products.jsp?size=43">43</a></li>
											<li><a class="list" href="_products.jsp?size=44">≥44</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Football<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Brand</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?brand=nike">NIKE</a></li>
											<li><a class="list" href="_products.jsp?brand=adidas">ADIDAS</a></li>
											<li><a class="list" href="_products.jsp?brand=ua">UNDER ARMOUR</a></li>
											<li><a class="list" href="_products.jsp?brand=aj">AIR JORDAN</a></li>
											<li><a class="list" href="_products.jsp?brand=vans">VANS</a></li>
											<li><a class="list" href="_products.jsp?brand=converse">CONVERSE</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Function</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?function=high">High</a></li>
											<li><a class="list" href="_products.jsp?function=middle">Middle</a></li>
											<li><a class="list" href="_products.jsp?function=low">Low</a></li>
											<li><a class="list" href="_products.jsp?function=elite">Elite</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Size</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?size=40">≤40</a></li>
											<li><a class="list" href="_products.jsp?size=41">41</a></li>
											<li><a class="list" href="_products.jsp?size=42">42</a></li>
											<li><a class="list" href="_products.jsp?size=42.5">42.5</a></li>
											<li><a class="list" href="_products.jsp?size=43">43</a></li>
											<li><a class="list" href="_products.jsp?size=44">≥44</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Running<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Brand</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?brand=nike">NIKE</a></li>
											<li><a class="list" href="_products.jsp?brand=adidas">ADIDAS</a></li>
											<li><a class="list" href="_products.jsp?brand=ua">UNDER ARMOUR</a></li>
											<li><a class="list" href="_products.jsp?brand=aj">AIR JORDAN</a></li>
											<li><a class="list" href="_products.jsp?brand=vans">VANS</a></li>
											<li><a class="list" href="_products.jsp?brand=converse">CONVERSE</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Function</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?function=high">High</a></li>
											<li><a class="list" href="_products.jsp?function=middle">Middle</a></li>
											<li><a class="list" href="_products.jsp?function=low">Low</a></li>
											<li><a class="list" href="_products.jsp?function=elite">Elite</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Size</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?size=40">≤40</a></li>
											<li><a class="list" href="_products.jsp?size=41">41</a></li>
											<li><a class="list" href="_products.jsp?size=42">42</a></li>
											<li><a class="list" href="_products.jsp?size=42.5">42.5</a></li>
											<li><a class="list" href="_products.jsp?size=43">43</a></li>
											<li><a class="list" href="_products.jsp?size=44">≥44</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Casual <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Brand</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?brand=nike">NIKE</a></li>
											<li><a class="list" href="_products.jsp?brand=adidas">ADIDAS</a></li>
											<li><a class="list" href="_products.jsp?brand=ua">UNDER ARMOUR</a></li>
											<li><a class="list" href="_products.jsp?brand=aj">AIR JORDAN</a></li>
											<li><a class="list" href="_products.jsp?brand=vans">VANS</a></li>
											<li><a class="list" href="_products.jsp?brand=converse">CONVERSE</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Function</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?function=high">High</a></li>
											<li><a class="list" href="_products.jsp?function=middle">Middle</a></li>
											<li><a class="list" href="_products.jsp?function=low">Low</a></li>
											<li><a class="list" href="_products.jsp?function=elite">Elite</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Size</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="_products.jsp?size=40">≤40</a></li>
											<li><a class="list" href="_products.jsp?size=41">41</a></li>
											<li><a class="list" href="_products.jsp?size=42">42</a></li>
											<li><a class="list" href="_products.jsp?size=42.5">42.5</a></li>
											<li><a class="list" href="_products.jsp?size=43">43</a></li>
											<li><a class="list" href="_products.jsp?size=44">≥44</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					</ul>
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">
						<%
							PrintWriter Out = response.getWriter();
							AccountBean account = (AccountBean) session.getAttribute("account");
						%>
						<form id="loginForm" action="Login">
							<fieldset id="body">
								<fieldset>
									<%
										if (account == null){
									%>
									<label for="email">Email Address</label>
									<input type="text" name="email" id="email">
									<%
										}else {
									%>
									<label for="email">Welcome:</label>
									<%=account.getUsername()%>
									<%
										}
									%>
								</fieldset>
								<fieldset>
									<%if (account == null){%>
									<label for="password">Password</label>
									<input type="password" name="password" id="password">
									<%}%>
								</fieldset>
								<%if (account == null){%>
								<input type="submit" id="login" value="Sign in">
								<%}else{%>
								<input type="submit" id="login" value="Log out" formaction="Logout">
								<%}%>
								<!--label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label-->
							</fieldset>
							<%if (account == null){%>
							<p>New User ? <a class="sign" href="account.jsp">Sign Up</a> <span><a href="#">Forgot your password?</a></span></p>
							<%}%>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</html>