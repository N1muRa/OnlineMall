<%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2017/1/3
  Time: 01:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Commodity</title>
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
            width: 120%;
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
    <script language="JavaScript" type="text/JavaScript">
        <!--
        function toggle(id1){
            var aa = document.getElementById(id1);
            var n=aa.value;
            if(n=="Basketball")
                document.all.target.style.display="block";
            else
                document.all.target.style.display="none";
        }
        -->
    </script>
    <!-- cart -->
    <script src="js/simpleCart.min.js"> </script>
    <!-- cart -->
</head>
<body>
<!--header-->
<%@ include file="header.jsp"%>
<!--//header-->
<!--account-->
<div class="table_row">
    <table border="1" cellpadding="0" bgcolor="white" width="400"  height="75" bordercolor="#FFFFFF" align="center" style="margin-bottom: 50px;margin-top:50px; ">
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Name</h1>
            </td>
            <td align="left" width="100" valign="middle"  height="60"><input type="text" id = "Name" value="">
            </td>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Brand</h1>
            </td>
            <td align="left" width="100" valign="middle"  height="60">
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
            <td align="left" width="50" valign="middle"  height="60" rowspan=2><h1>Picture</h1></td>
            <td align="left" width="100" valign="middle" height="60"><img src="" alt="" width="85" height="85" style="margin-bottom:10px;"></td>
        <tr align="center"><td align="left" width="100" valign="middle" height="60"><input type="button" style="border: 2px solid #F07818;color: #FFF;font-size: 0.8em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818; -moz-border-radius: 10px;-webkit-border-radius: 10px;border-radius:15px;" value="Upload"></td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Colour</h1>
            </td>
            <td align="left" width="100" valign="middle"  height="60">
                <input type="checkbox" value="White"><a class="color-choice" href="javascript:return false;" data-facet-value-name="White" data-facet-name="Color" style="background-color: #fff;"></a>
                <input type="checkbox" value="Sliver"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Silver" data-facet-name="Color" style="background-color: #e5e5e5;"></a>
                <input type="checkbox" value="Gold"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Gold" data-facet-name="Color" style="background-color: #DAAF00;"></a>
                <input type="checkbox" value="Orange"><a class="color-choice" href="javascript:return false;" data-facet-value-name="Orange" data-facet-name="Color" style="background-color: #f36b26;"></a>
                <input type="checkbox" value="Red"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Red" data-facet-name="Color" style="background-color: #e7352b;"></a><br>
                <input type="checkbox" value="Green"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Green" data-facet-name="Color" style="background-color: #7bba3c;"></a>
                <input type="checkbox" value="Blue"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Blue" data-facet-name="Color" style="background-color: #1790c8;"></a>
                <input type="checkbox" value="Pink"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Pink" data-facet-name="Color" style="background-color: #d82a90;"></a>
                <input type="checkbox" value="Olive"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Olive" data-facet-name="Color" style="background-color: #7F7F00;"></a>
                <input type="checkbox" value="Black"><a class="color-choice" href="javascript:return false;"  data-facet-value-name="Black" data-facet-name="Color" style="background-color: #000000;"></a>
            </td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Function</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60">
                <select name="function" id="change" onchange="toggle(this.id)" style="margin-bottom: 10px;">
                    <option value="Basketball">Basketball</option>
                    <option value="Football">Football</option>
                    <option value="Casual">Casual</option>
                    <option value="Running">Running</option>
                </select>
                <div id="target" style="display:block;">
                    <select name="Type">
                        <option value="High">High Hight</option>
                        <option value="Middle">Middle Hight</option>
                        <option value="Low">Low Hight</option>
                    </select>
                </div>
            </td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Price</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="text" id="Price" value=""></td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Store</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="text" id="Store" value="Please put in number" onfocus="javascript:if(this.value=='Please put in number')this.value='';">
        </tr>
        <tr>
            <td align="left" width="50" valign="middle"  height="60"><h1>Discribe</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="text" id="d1" value="" style="margin-bottom: 5px;"><br><input type="text" id="d2" value="">
        </tr>
        <tr>
            <td align="right" width="50" valign="middle"  height="60"></td>
            <td align="center" width="70" valign="middle" height="60"><input type="submit" value="Confirm" style="border: 2px solid #F07818;color: #FFF;
    font-size: 1.1em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818; -moz-border-radius: 10px;-webkit-border-radius: 15px;border-radius:15px; ">
            </td>
        </tr>
    </table>
</div>
<!--//account-->
<!--footer-->
<%@include file="footer.jsp"%>
<!--footer-->
</body>
</html>
