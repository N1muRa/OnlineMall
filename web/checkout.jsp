<%@page import="Class.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>
<!--//header-->
<%
    List<ShoppingList> com = (List<ShoppingList>) session.getAttribute("SL");
    Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");
%>
<!--cart-items-->
<div class="cart-items">
    <div class="container">
        <h2>My Shopping Cart(<%=com.size()%>)</h2>
        <%
            for (int i = 0; i < com.size(); i++ ){
                Commodity commodity = new Commodity();
                for (int j = 0;j < commodities.size(); j++){
                    commodity = commodities.get(j);
                    //System.out.println(com.get(i).getCo_ID() + " " + commodity.getID());
                    if (Integer.parseInt(com.get(i).getCo_ID()) == commodity.getID()){
                        break;
                    }
                }
        %>
        <script>$(document).ready(function (c) {
            $('.close<%=i+1%>').on('click', function (c) {
                $('.cart-header<%=i+1%>').fadeOut('slow', function (c) {
                    $('.cart-header<%=i+1%>').remove();
                });
            });
        });
        </script>
        <div class="cart-header<%=i+1%>">
            <div class="close<%=i+1%>"></div>
            <div class="cart-sec simpleCart_shelfItem">
                <div class="cart-item cyc">
                    <img src="<%=commodity.getImage()%>" class="img-responsive" alt="">
                </div>
                <div class="cart-item-info">
                    <h3><a href="#">  </a><span><%=commodity.getName()%></span></h3>
                    <ul class="qty">
                        <li><p>Brand:<%=commodity.getBrand()%></p></li>
                        <li><p>FREE delivery</p></li>
                    </ul>
                    <div class="delivery">
                        <p>Price: <%=commodity.getPrice()%></p>
                        <span>Time: <%=com.get(i).getL_Time()%></span>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
        <%}%>
        <div style="float:right;">
            <input type="submit" value="Confirm" style="border: 2px solid #F07818;color: #FFF;
                font-size: 1.1em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818;">
        </div>
    </div>

</div>

<!--//checkout-->
<!--footer-->
<%@include file="footer.jsp" %>
<!--footer-->
</body>
</html>
