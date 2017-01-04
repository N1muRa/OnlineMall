<%@ page import="Class.Commodity" %>
<%@page import="Class.Connector" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
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
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //js -->
    <style type="text/css" media="screen">
        .color-choice {
            border: 1px solid #ccc;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            height: 24px;
            width: 24px;
            display: inline-block;
            border-radius: 24px;
            margin-right: 10px;
            margin-top: 8px;
        }

        .ziti {
            font-family: Tahoma;
            font-size: 15px;
            color: #4F4F4F;
        }
    </style>
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <%
        Vector<Commodity> coms = (Vector<Commodity>) session.getAttribute("coms");
        int count = -1, page_num = -1, cur_page = 1;

        if (coms != null) {
            count = coms.size();
            page_num = count / 9 + 1;
        }

        String now_page = request.getParameter("page");
        if (now_page != null) {
            cur_page = Integer.parseInt(now_page.trim());
        }
    %>
    <script>

        function showShoes(s) {

            var str = "?" + s.name + "=" + s.value;

            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("products").innerHTML = xmlhttp.responseText;
                    document.getElementById("pages").innerHTML = "";
                }
            }

            xmlhttp.open("POST", "up_ajax.jsp" + str, true);
            xmlhttp.send();
        }
    </script>
    <!-- the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function () {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- //the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    <!-- the mousewheel plugin -->
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>
<!--//header-->
<!--products-->
<div class="products">
    <div class="container">
        <h2>Our Shoes</h2>
        <div class="col-md-9 product-model-sec" id="products">
            <%
                for (int i = 0; i < (cur_page < page_num ? 9 : count % 9); i++) {
                    int cur = i + (cur_page - 1) * 9;
            %>
            <div class="product-grid">
                <a href="_single.jsp?ID=<%=coms.get(cur).getID()%>">
                    <div class="more-product"><span> </span></div>
                    <div class="product-img b-link-stripe b-animate-go  thickbox">
                        <img src="<%=coms.get(cur).getImage()%>" class="img-responsive" alt="">
                        <div class="b-wrapper">
                            <h4 class="b-animate b-from-left  b-delay03">
                                <button>View</button>
                            </h4>
                        </div>
                    </div>
                </a>
                <div class="product-info simpleCart_shelfItem">
                    <form action="ShopServlet" method="post">
                    <div class="product-info-cust prt_name">
                        <h4><%=coms.get(cur).getName()%>
                        </h4>
                        <span class="item_price"><%=Math.floor(coms.get(cur).getPrice() + 0.5)%></span>
                        <div class="ofr">
                            <p class="pric1">
                                <del><%=Math.floor(coms.get(cur).getPrice() * 1.15 + 0.5)%>
                                </del>
                            </p>
                            <p class="disc">[15% Off]</p>
                        </div>
                        <input value="<%=coms.get(cur).getID()%>" name="id" hidden>
                        <input type="text" class="item_quantity" name="quantity" value="1"/>
                        <input type="submit" class="item_add items" value="Add">
                        <div class="clearfix"></div>
                    </div>
                    </form>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="col-md-3 rsidebar span_1_of_left">
            <section class="sky-form">
                <div class="product_right">
                    <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
                    <div class="tab1">
                        <ul class="place">
                            <li class="sort">Basketball</li>
                            <li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="single-bottom">
                            <a href="#"><p>High</p></a>
                            <a href="#"><p>Low</p></a>
                        </div>
                    </div>
                    <div class="tab2">
                        <ul class="place">
                            <li class="sort">Running</li>
                            <li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="single-bottom">
                            <a href="#"><p>NEW ARRIVALS</p></a>
                            <a href="#"><p>FASHION</p></a>
                        </div>
                    </div>
                    <div class="tab3">
                        <ul class="place">
                            <li class="sort">Casual</li>
                            <li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="single-bottom">
                            <a href="#"><p>CLASSIC</p></a>
                            <a href="#"><p>TRENDING NOW</p></a>
                        </div>
                    </div>
                    <div class="tab4">
                        <ul class="place">
                            <li class="sort">Football</li>
                            <li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="single-bottom">
                            <a href="#"><p>MERCURIAL</p></a>
                            <a href="#"><p>HYPERVENOM</p></a>
                            <a href="#"><p>SOCCERX</p></a>
                        </div>
                    </div>
                    <!--script-->
                    <script>
                        $(document).ready(function () {
                            $(".tab1 .single-bottom").hide();
                            $(".tab2 .single-bottom").hide();
                            $(".tab3 .single-bottom").hide();
                            $(".tab4 .single-bottom").hide();
                            $(".tab5 .single-bottom").hide();

                            $(".tab1 ul").click(function () {
                                $(".tab1 .single-bottom").slideToggle(300);
                                $(".tab2 .single-bottom").hide();
                                $(".tab3 .single-bottom").hide();
                                $(".tab4 .single-bottom").hide();
                                $(".tab5 .single-bottom").hide();
                            })
                            $(".tab2 ul").click(function () {
                                $(".tab2 .single-bottom").slideToggle(300);
                                $(".tab1 .single-bottom").hide();
                                $(".tab3 .single-bottom").hide();
                                $(".tab4 .single-bottom").hide();
                                $(".tab5 .single-bottom").hide();
                            })
                            $(".tab3 ul").click(function () {
                                $(".tab3 .single-bottom").slideToggle(300);
                                $(".tab4 .single-bottom").hide();
                                $(".tab5 .single-bottom").hide();
                                $(".tab2 .single-bottom").hide();
                                $(".tab1 .single-bottom").hide();
                            })
                            $(".tab4 ul").click(function () {
                                $(".tab4 .single-bottom").slideToggle(300);
                                $(".tab5 .single-bottom").hide();
                                $(".tab3 .single-bottom").hide();
                                $(".tab2 .single-bottom").hide();
                                $(".tab1 .single-bottom").hide();
                            })
                            $(".tab5 ul").click(function () {
                                $(".tab5 .single-bottom").slideToggle(300);
                                $(".tab4 .single-bottom").hide();
                                $(".tab3 .single-bottom").hide();
                                $(".tab2 .single-bottom").hide();
                                $(".tab1 .single-bottom").hide();
                            })
                        });
                    </script>
                    <!--//script -->
                </div>
            </section>
            <script type="text/javascript" src="/end/js/jquery-1.7.1.js"></script>
            <script type="text/javascript">
                function check() {
                    var chk_value = [];
                    $('input[name=brand]:checked').each(function () {
                        chk_value.push($(this).val());
                    });
                    $.ajax({
                        type: "post",
                        url: "up_ajax.jsp",
                        data: 'brand=' + chk_value,
                        dataType: "json",
                        error: function () {
                            alert("Wrong, you have not choose a choice.");
                        },
                        success: function (msg) {
                            alert(msg);
                        },
                        complete: function (XMLHttpRequest, textStatus) {
                            this; // 调用本次AJAX请求时传递的options参数
                        }
                    });
                }
            </script>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>COLLECTIONS</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input onclick="showShoes(this)" type="radio" name="brand" value="Nike"><i></i>
                            <h class="ziti">Nike Zoom</h>
                        </label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input onclick="showShoes(this)" type="radio" name="brand"
                                                       value="Nike"><i></i>
                            <h class="ziti">Nike Lunarlon</h>
                        </label>
                        <label class="checkbox"><input onclick="showShoes(this)" type="radio" name="brand"
                                                       value="Air Jordan"><i></i>
                            <h class="ziti">Nike Air Max</h>
                        </label>
                        <label class="checkbox"><input onclick="showShoes(this)" type="radio" name="brand"
                                                       value="Adidas"><i></i>
                            <h class="ziti">Adidas Boost</h>
                        </label>
                        <label class="checkbox"><input onclick="showShoes(this)" type="radio" name="brand"><i></i>
                            <h class="ziti" value="Under Armour">UA Clutch</h>
                        </label>
                    </div>
                </div>
            </section>
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount"
                               style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';"/>
                    </a></li>
                </ul>
            </section>
            <!---->
            <script type="text/javascript" src="js/jquery-ui.min.js"></script>
            <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
            <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $("#slider-range").slider({
                    range: true,
                    min: 0,
                    max: 100000,
                    values: [500, 100000],
                    slide: function (event, ui) {
                        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                    }
                });
                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
            });//]]>
            </script>
            <!---->
            <section class="sky-form">
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By SHOE HEIGHT</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input onclick="showShoes(this)" value="Low" type="radio" name="height"><i></i>
                            <h class="ziti">Low Hight</h>
                        </label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input onclick="showShoes(this)" value="Middle" type="radio" name="height"><i></i>
                            <h class="ziti">Mid Hight</h>
                        </label>
                        <label class="checkbox"><input onclick="showShoes(this)" value="High" type="radio" name="height"><i></i>
                            <h class="ziti">High Hight</h>
                        </label>
                    </div>
                </div>
            </section>
            <section >
                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
                <form>
                    <div class="row row1 scroll-pane">
                        <input onclick="showShoes(this)" type="radio" name="color" value="White"><a class="color-choice" style="background-color: #fff;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Gray"><a class="color-choice" style="background-color: #e5e5e5;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Gold"><a class="color-choice" style="background-color: #F0E68C;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Yellow"><a class="color-choice" style="background-color: #DAAF00;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Orange"><a class="color-choice" style="background-color: #f36b26;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Red"><a class="color-choice" style="background-color: #e7352b;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Green"><a class="color-choice" style="background-color: #7bba3c;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Blue"><a class="color-choice" style="background-color: #1790c8;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Pink"><a class="color-choice" style="background-color: #d82a90;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Olive"><a class="color-choice" style="background-color: #7F7F00;"></a>
                        <input onclick="showShoes(this)" type="radio" name="color" value="Black"><a class="color-choice" style="background-color: #000000;"></a>
                    </div>
                </form>
            </section>
            <div class="clearfix"></div>
        </div>
    </div>
    <div align="center" id="pages">当前是：<%=cur_page%>/<%=page_num%>页 共<%=coms.size()%>件商品
        <%
            if (cur_page == 1) {
        %>
        <span class=''>首页</span> <span class=''>上一页</span>
        <%
        } else {
        %>
        <a href="_products.jsp">首页</a>
        <a href="?page=<%=cur_page - 1%>">上一页</a>
        <%
            }
        %>
        <% if (cur_page < page_num) {%>
        <a href="?page=<%=cur_page + 1%>">下一页</a>
        <%
        } else {
        %>
        <span>下一页</span>
        <%
            }
        %>
        <% if (cur_page < page_num) {%>
        <a href="?page=<%=page_num%>">尾页</a>
        <%
        } else {
        %>
        <span>尾页</span>
        <%
            }
        %>
        第<select name="PB_Page_Select" onchange="location.href='?page='+this.value">
            <% for (int i = 1; i <= page_num; i++) {
                if (i == cur_page) {
            %>
            <option value="<%=i%>" selected="selected"><%=i%>
                    <%
				}else {
			%>
            <option value="<%=i%>"><%=i%>
            </option>
            <%
                    }
                }
            %>
        </select>页
    </div>
    <br>
    <!--//products-->
    <!--footer-->
    <%@include file="footer.jsp" %>
</body>
</html>