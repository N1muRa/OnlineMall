<%@page import="Class.*" %>
<%@page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %>
<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/19
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Vector<Commodity> c = (Vector<Commodity>) session.getAttribute("all");
    List<ShoppingList> shoppingLists = (List<ShoppingList>) session.getAttribute("SL");
    int counts = shoppingLists.size();
    double sumprice = 0.0;
    for (int i = 0;i< 2; i++){
        for (int j = 0; j < c.size(); j++){
            if (Integer.parseInt(shoppingLists.get(i).getCo_ID()) == c.get(j).getID()){
                sumprice += c.get(j).getPrice();
            }
        }
    }
%>
<html>
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="index.jsp">Sneakerhead</a></h1>
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
                                        <li><a class="list" href="_products.jsp?brand=nike&fun=Basketball">NIKE</a></li>
                                        <li><a class="list" href="_products.jsp?brand=adidas&fun=Basketball">ADIDAS</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=ua&fun=Basketball">UNDER
                                            ARMOUR</a></li>
                                        <li><a class="list" href="_products.jsp?brand=aj&fun=Basketball">AIR JORDAN</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=vans&fun=Basketball">VANS</a></li>
                                        <li><a class="list"
                                               href="_products.jsp?brand=converse&fun=Basketball">CONVERSE</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Function</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?function=high&fun=Basketball">High</a>
                                        </li>
                                        <li><a class="list"
                                               href="_products.jsp?function=middle&fun=Basketball">Middle</a></li>
                                        <li><a class="list" href="_products.jsp?function=low&fun=Basketball">Low</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?function=elite&fun=Basketball">Elite</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Size</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?size=40&fun=Basketball">≤40</a></li>
                                        <li><a class="list" href="_products.jsp?size=41&fun=Basketball">41</a></li>
                                        <li><a class="list" href="_products.jsp?size=42&fun=Basketball">42</a></li>
                                        <li><a class="list" href="_products.jsp?size=42.5&fun=Basketball">42.5</a></li>
                                        <li><a class="list" href="_products.jsp?size=43&fun=Basketball">43</a></li>
                                        <li><a class="list" href="_products.jsp?size=44&fun=Basketball">≥44</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Football<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>By Brand</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?brand=nike&fun=Football">NIKE</a></li>
                                        <li><a class="list" href="_products.jsp?brand=adidas&fun=Football">ADIDAS</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=ua&fun=Football">UNDER ARMOUR</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=aj&fun=Football">AIR JORDAN</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=vans&fun=Football">VANS</a></li>
                                        <li><a class="list"
                                               href="_products.jsp?brand=converse&fun=Football">CONVERSE</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Function</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?function=high&fun=Football">High</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?function=middle&fun=Football">Middle</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?function=low&fun=Football">Low</a></li>
                                        <li><a class="list" href="_products.jsp?function=elite&fun=Football">Elite</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Size</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?size=40&fun=Football">≤40</a></li>
                                        <li><a class="list" href="_products.jsp?size=41&fun=Football">41</a></li>
                                        <li><a class="list" href="_products.jsp?size=42&fun=Football">42</a></li>
                                        <li><a class="list" href="_products.jsp?size=42.5&fun=Football">42.5</a></li>
                                        <li><a class="list" href="_products.jsp?size=43&fun=Football">43</a></li>
                                        <li><a class="list" href="_products.jsp?size=44&fun=Football">≥44</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Running<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>By Brand</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?brand=nike&fun=Running">NIKE</a></li>
                                        <li><a class="list" href="_products.jsp?brand=adidas&fun=Running">ADIDAS</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=ua&fun=Running">UNDER ARMOUR</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=aj&fun=Running">AIR JORDAN</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=vans&fun=Running">VANS</a></li>
                                        <li><a class="list" href="_products.jsp?brand=converse&fun=Running">CONVERSE</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Function</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?function=high&fun=Running">High</a></li>
                                        <li><a class="list" href="_products.jsp?function=middle&fun=Running">Middle</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?function=low&fun=Running">Low</a></li>
                                        <li><a class="list" href="_products.jsp?function=elite&fun=Running">Elite</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Size</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?size=40&fun=Running">≤40</a></li>
                                        <li><a class="list" href="_products.jsp?size=41&fun=Running">41</a></li>
                                        <li><a class="list" href="_products.jsp?size=42&fun=Running">42</a></li>
                                        <li><a class="list" href="_products.jsp?size=42.5&fun=Running">42.5</a></li>
                                        <li><a class="list" href="_products.jsp?size=43&fun=Running">43</a></li>
                                        <li><a class="list" href="_products.jsp?size=44&fun=Running">≥44</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown grid">
                        <a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Casual <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>By Brand</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?brand=nike&fun=Casual">NIKE</a></li>
                                        <li><a class="list" href="_products.jsp?brand=adidas&fun=Casual">ADIDAS</a></li>
                                        <li><a class="list" href="_products.jsp?brand=ua&fun=Casual">UNDER ARMOUR</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?brand=aj&fun=Casual">AIR JORDAN</a></li>
                                        <li><a class="list" href="_products.jsp?brand=vans&fun=Casual">VANS</a></li>
                                        <li><a class="list" href="_products.jsp?brand=converse&fun=Casual">CONVERSE</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Function</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?function=high&fun=Casual">High</a></li>
                                        <li><a class="list" href="_products.jsp?function=middle&fun=Casual">Middle</a>
                                        </li>
                                        <li><a class="list" href="_products.jsp?function=low&fun=Casual">Low</a></li>
                                        <li><a class="list" href="_products.jsp?function=elite&fun=Casual">Elite</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <h4>By Size</h4>
                                    <ul class="multi-column-dropdown">
                                        <li><a class="list" href="_products.jsp?size=40&fun=Casual">≤40</a></li>
                                        <li><a class="list" href="_products.jsp?size=41&fun=Casual">41</a></li>
                                        <li><a class="list" href="_products.jsp?size=42&fun=Casual">42</a></li>
                                        <li><a class="list" href="_products.jsp?size=42.5&fun=Casual">42.5</a></li>
                                        <li><a class="list" href="_products.jsp?size=43&fun=Casual">43</a></li>
                                        <li><a class="list" href="_products.jsp?size=44&fun=Casual">≥44</a></li>
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
                        <button type="button" class="btn btn-default" aria-label="Left Align">
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
                                    if (account == null) {
                                %>
                                <label for="phone">Phone Number</label>
                                <input type="text" name="phone" id="phone">
                                <%
                                } else {
                                %>
                                <label>Welcome:</label>
                                <a href="personalInfo.jsp"><%=account.getUsername()%>
                                </a>
                                <%
                                    }
                                %>
                            </fieldset>
                            <fieldset>
                                <%if (account == null) {%>
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password">
                                <%}%>
                            </fieldset>
                            <%if (account == null) {%>
                            <input type="submit" id="login" value="Sign in">
                            <%} else {%>
                            <input type="submit" id="login" value="Log out" formaction="Logout">
                            <%}%>
                        </fieldset>
                        <%if (account == null) {%>
                        <p>New User ? <a class="sign" href="account.jsp">Sign Up</a> <span><a href="#">Forgot your password?</a></span>
                        </p>
                        <%}%>
                    </form>
                </div>
            </div>
            <div class="header-right cart">
                <a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
                <div class="cart-box">
                    <h4><a href="checkout.jsp">
                        <span><%=sumprice%></span>
                        (<span><%=counts%></span>)
                    </a></h4>
                    <p><a onclick="" class="simpleCart_empty">Empty cart</a></p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</html>
