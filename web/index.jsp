<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="init.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
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
<!--banner-->
<div class="banner">
    <div class="container">
        <h2 class="hdng">Fantastic <span>Shoes</span></h2>
        <p>TUBULAR DOOM</p>
        <a href="_products.jsp?size=40">SHOP NOW</a>
        <div class="banner-text">
            <img src="images/2.png" alt=""/>
        </div>
    </div>
</div>
<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="gallery-grids">
            <div align="center" class="col-md-8 gallery-grid glry-one" style="height: 486.8px">
                <a href="_products.jsp?size=40"><img src="images/g1.jpg" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Greatest Yeezy Boost</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$1250.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 gallery-grid glry-two">
                <a href="_products.jsp?size=40"><img src="images/g2.jpg" class="img-responsive" alt=""/>
                    <div class="gallery-info galrr-info-two">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Kobe always Kobe</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$200.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g3.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Air Jordan Brand</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$200.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g4.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Air Foamposite one</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$1599.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g5.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Do What I want</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$200.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g6.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Just Do It</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$150.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g7.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Ultra Boost</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$200.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g8.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Vers Off the Wall</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$50.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g9.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>It's Converse for Comfort</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$50.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 gallery-grid ">
                <a href="_products.jsp?size=40"><img src="images/g10.png" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                        <a class="shop" href="single.jsp">SHOP NOW</a>
                        <div class="clearfix"></div>
                    </div>
                </a>
                <div class="galy-info">
                    <p>Impossible is Nothing</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">$150.00</h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//gallery-->
<!--subscribe-->
<div class="subscribe">
    <div class="container">
        <h3>Newsletter </h3>
        <form>
            <input type="text" class="text" value="Email" onFocus="this.value = '';"
                   onBlur="if (this.value == '') {this.value = 'Email';}">
            <input type="submit" value="Subscribe">
        </form>
    </div>
</div>
<!--//subscribe-->
<!--footer-->
<%@include file="footer.jsp" %>
<!--//footer-->
</body>
</html>
