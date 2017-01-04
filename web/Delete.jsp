<%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2017/1/3
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete</title>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //js -->
    <style type="text/css" media="screen">
        .table_row h1 {
            color: #F07818;
            font-size: 2em;
            margin: 0;
            font-family: 'Marvel-Regular';
        }
        .table_row h {
            font-size: 1.5em;
            margin: 0;
            font-family: 'Marvel-Regular';
        }
        .table_row input[type="text"], .table_row input[type="password"] {
            border: 1px solid #555;
            outline-color:#FD9F3E;
            width: 100%;
            font-size: 1em;
            padding: 0.5em;
        }
        .color-choice{
            border: 1px solid #ccc;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            height: 15px;
            width: 15px;
            display: inline-block;
            margin-right: 10px;
            margin-top: 8px;
        }
    </style>
    <!-- cart -->
    <script src="js/simpleCart.min.js"> </script>
    <!-- cart -->
</head>
<body>
<!--header-->
<%@include file="header.jsp"%>
<!--//header-->
<div class="products">
    <div class="container">
        <h2 style="margin-bottom: 0px;">Delete Shoes</h2>
        <div class="col-md-9 product-model-sec">
            <div class="table_row" style="float: left;margin-top: 0px;">
                <table border="1" cellpadding="0" bgcolor="white" width="400" height="75" bordercolor="#fff" align="center" style="margin-bottom: 50px; ">
                    <tr>
                        <td align="left" width="50" valign="middle"  height="60"><h1>Name</h1></td>
                        <td align="left" width="150" valign="middle"  height="60"><input type="text" id = "Name" value=""></td>
                    </tr>
                    <tr>
                        <td align="left" width="50" valign="middle"  height="60"><h1>Brand</h1></td>
                        <td align="left" width="150" valign="middle"  height="60">
                            <select name="">
                                <option value="Nike">Nike</option>
                                <option value="Air Jordan">Air Jordan</option>
                                <option value="Adidas">Adidas</option>
                                <option value="Under Armour">Under Armour</option>
                                <option value="Conserve">Converse</option>
                                <option value="Vans">Vans</option>
                            </select>
                    </tr>
                    <tr>
                        <td align="left" width="50" valign="middle"  height="60"><h1>Colour</h1></td>
                        <td align="left" width="200" valign="middle"  height="60">
                            <input type="checkbox" value="White"><a class="color-choice" href="javascript:return false;" data-facet-value-name="White" data-facet-name="Color" style="background-color: #fff;"></a>
                            <input type="checkbox" value="Sliver"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Silver" data-facet-name="Color" style="background-color: #e5e5e5;"></a>
                            <input type="checkbox" value="Gold"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Gold" data-facet-name="Color" style="background-color: #DAAF00;"></a>
                            <input type="checkbox" value="Orange"><a class="color-choice" href="javascript:return false;" data-facet-value-name="Orange" data-facet-name="Color" style="background-color: #f36b26;"></a>
                            <input type="checkbox" value="Red"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Red" data-facet-name="Color" style="background-color: #e7352b;"></a><br>
                            <input type="checkbox" value="Green"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Green" data-facet-name="Color" style="background-color: #7bba3c;"></a>
                            <input type="checkbox" value="Blue"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Blue" data-facet-name="Color" style="background-color: #1790c8;"></a>
                            <input type="checkbox" value="Pink"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Pink" data-facet-name="Color" style="background-color: #d82a90;"></a>
                            <input type="checkbox" value="Olive"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Olive" data-facet-name="Color" style="background-color: #7F7F00;"></a>
                            <input type="checkbox" value="Black"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Black" data-facet-name="Color" style="background-color: #000000;"></a></td>
                    </tr>
                    <tr>
                        <td align="right" width="50" valign="middle"  height="60"></td>
                        <td align="center" width="200" valign="middle" height="60">
                            <input type="submit" value="Delete" style="border: 2px solid #F07818;color: #FFF;font-size: 1.1em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818; -moz-border-radius: 10px;-webkit-border-radius: 15px;border-radius:15px; "/></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="col-md-3 rsidebar span_1_of_left">
            <a href="add.jsp" style="font-size: 1.5em; color: #F07818;font-weight: 800;padding: 0.5em 3em;border: 7px solid #5D4B33;margin-bottom: 20px;">APPEND</a><br><br><br><br>
            <a href="Modify.jsp" style="font-size: 1.5em; color: #F07818;font-weight: 800;padding: 0.5em 3em;border: 7px solid #5D4B33;margin-bottom: 10px;">MODIFY</a><br><br><br><br>
            <a href="Delete.jsp" style="font-size: 1.5em; color: #F07818;font-weight: 800;padding: 0.5em 3em;border: 7px solid #5D4B33;margin-bottom: 10px;">DELETE</a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//account-->

<!--footer-->
<%@include file="footer.jsp"%>
<!--footer-->
</body>
</html>