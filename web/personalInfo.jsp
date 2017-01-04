<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/24
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>PersonalInfo</title>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
    <script>
        function upload()
        {
            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("Pic").innerHTML = xmlhttp.responseText;
                }
            }

            xmlhttp.open("POST", "Up_load.jsp", true);
            xmlhttp.send();
        }
    </script>
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
            outline-color: #FD9F3E;
            width: 100%;
            font-size: 0.75em;
            padding: 0.5em;
        }
    </style>
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>
<!--//header-->
<!--info-->
<div class="table_row">
    <table border="1" cellpadding="0" bgcolor="white" width="400" height="75" bordercolor="#FFFFFF" align="center"
           style="margin-bottom: 50px;margin-top:50px; ">
        <tr>
            <td align="left" width="50" valign="middle" height="60"><h1>Name</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="text" name="" value="">
            </td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle" height="60"><h1>Avatar</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60">
               <div id="Pic">
                <img src="" alt="" width="80" height="80" style="margin-bottom: 10px;" id="Ava"><br>
               </div>
                <input type="submit" onclick="upload()" value="Upload" style="border: 2px solid #F07818;color: #FFF;font-size: 1.1em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818;">
        </tr>
        <tr>
            <td align="left" width="50" valign="middle" height="60"><h1>Password</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="password" name="" value="">
            </td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle" height="60"><h1>Gender</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="radio" name="gender" value="Female">
                <h style="margin-right:100px;">Female</h>
                <input type="radio" name="gender" value="Male" checked>
                <h>Male</h>
            </td>
        </tr>
        <tr>
            <td align="left" width="50" valign="middle" height="60"><h1>Age</h1>
            </td>
            <td align="left" width="100" valign="middle" height="60"><input type="text" name="" value=""></td>
        </tr>
        <tr>
            <td align="right" width="50" valign="middle" height="60"></td>
            <td align="right" width="70" valign="middle" height="60"><input type="submit" value="Modify" style="border: 2px solid #F07818;color: #FFF;
    font-size: 1.1em;padding: 0.5em 1.5em;transition: 0.5s all;-webkit-transition: 0.5s all;-moz-transition: 0.5s all;-o-transition: 0.5s all;display:inline-block; outline: none;background-color: #F07818;">
            </td>
        </tr>
    </table>
</div>
<!--//info-->
<!--footer-->
<%@include file="footer.jsp" %>
</div>
<!--footer-->
</body>
</html>