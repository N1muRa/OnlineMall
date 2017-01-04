<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Contact</title>
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
    <script>
        function SendMail()
        {
            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("Mail").innerHTML = xmlhttp.responseText;
                }
            }

            xmlhttp.open("POST", "Mail.jsp", true);
            xmlhttp.send();
        }
    </script>
    <!-- map-->
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
        <meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具"/>
        <meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图"/>
        <title>百度地图API自定义地图</title>
        <!--引用百度地图API-->
        <style type="text/css">
            html, body {
                margin: 0;
                padding: 0;
            }

            .iw_poi_title {
                color: #CC5522;
                font-size: 14px;
                font-weight: bold;
                overflow: hidden;
                padding-right: 13px;
                white-space: nowrap
            }

            .iw_poi_content {
                font: 12px arial, sans-serif;
                overflow: visible;
                padding-top: 4px;
                white-space: -moz-pre-wrap;
                word-wrap: break-word
            }
        </style>
        <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
    </head>
<body>
<!--header-->
<%@include file="header.jsp" %>
<!--//header-->
<!--contact-->
<div class="contact">
    <div class="container">
        <h2>Contact Us</h2>
        <div style="width:1100px;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
        <script type="text/javascript">
            //创建和初始化地图函数：
            function initMap() {
                createMap();//创建地图
                setMapEvent();//设置地图事件
                addMapControl();//向地图添加控件
                addMarker();//向地图中添加marker
            }

            //创建地图函数：
            function createMap() {
                var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
                var point = new BMap.Point(121.412632, 31.235264);//定义一个中心点坐标
                map.centerAndZoom(point, 16);//设定地图的中心点和坐标并将地图显示在地图容器中
                window.map = map;//将map变量存储在全局
            }

            //地图事件设置函数：
            function setMapEvent() {
                map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
                map.enableScrollWheelZoom();//启用地图滚轮放大缩小
                map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
                map.enableKeyboard();//启用键盘上下左右键移动地图
            }

            //地图控件添加函数：
            function addMapControl() {
                //向地图中添加缩放控件
                var ctrl_nav = new BMap.NavigationControl({
                    anchor: BMAP_ANCHOR_TOP_LEFT,
                    type: BMAP_NAVIGATION_CONTROL_LARGE
                });
                map.addControl(ctrl_nav);
                //向地图中添加缩略图控件
                var ctrl_ove = new BMap.OverviewMapControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1});
                map.addControl(ctrl_ove);
                //向地图中添加比例尺控件
                var ctrl_sca = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
                map.addControl(ctrl_sca);
            }

            //标注点数组
            var markerArr = [{
                title: "Dorm&nbsp;5",
                content: "This&nbsp;is&nbsp;where&nbsp;we&nbsp;live&nbsp;now",
                point: "121.409865|31.235604",
                isOpen: 0,
                icon: {w: 21, h: 21, l: 0, t: 0, x: 6, lb: 5}
            }
            ];
            //创建marker
            function addMarker() {
                for (var i = 0; i < markerArr.length; i++) {
                    var json = markerArr[i];
                    var p0 = json.point.split("|")[0];
                    var p1 = json.point.split("|")[1];
                    var point = new BMap.Point(p0, p1);
                    var iconImg = createIcon(json.icon);
                    var marker = new BMap.Marker(point, {icon: iconImg});
                    var iw = createInfoWindow(i);
                    var label = new BMap.Label(json.title, {"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)});
                    marker.setLabel(label);
                    map.addOverlay(marker);
                    label.setStyle({
                        borderColor: "#808080",
                        color: "#333",
                        cursor: "pointer"
                    });

                    (function () {
                        var index = i;
                        var _iw = createInfoWindow(i);
                        var _marker = marker;
                        _marker.addEventListener("click", function () {
                            this.openInfoWindow(_iw);
                        });
                        _iw.addEventListener("open", function () {
                            _marker.getLabel().hide();
                        })
                        _iw.addEventListener("close", function () {
                            _marker.getLabel().show();
                        })
                        label.addEventListener("click", function () {
                            _marker.openInfoWindow(_iw);
                        })
                        if (!!json.isOpen) {
                            label.hide();
                            _marker.openInfoWindow(_iw);
                        }
                    })()
                }
            }
            //创建InfoWindow
            function createInfoWindow(i) {
                var json = markerArr[i];
                var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
                return iw;
            }
            //创建一个Icon
            function createIcon(json) {
                var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
                    imageOffset: new BMap.Size(-json.l, -json.t),
                    infoWindowOffset: new BMap.Size(json.lb + 5, 1),
                    offset: new BMap.Size(json.x, json.h)
                })
                return icon;
            }

            initMap();//创建和初始化地图
        </script>

        <div class="contact-infom">
            <h4>WHO WE ARE :</h4>
            <p>Based in California, Sneakerhead.com is a leading Internet retailer committed to providing unrivaled customer service, exclusive footwear, and a superior experience. We are passionate about sneakers, and continually strive to carry the best selection available anywhere - including athletic shoes, limited editions, retro classics, and lifestyle models.
                With 100% authentic products (including Nike, Air Jordan, Puma, Timberland, Adidas) and a sophisticated customer service system, Sneakerhead.com has one of the best reputations among online sneaker retailers. We're proud to be a Yahoo! 5-star rated merchant and a member of the Better Business Bureau. We always strive to make your online shopping experience the best it can be. Check out some of our customer reviews, and thank you for choosing Sneakerhead.com</p>
        </div>
        <div class="address">
            <div class="col-md-4 address-grids">
                <h4>Address :</h4>
                <ul>
                    <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                    <p>	ECNU<br>
                        Dorm Five,<br>
                        321A 313B
                    </p>
                </ul>
            </div>
            <div class="col-md-4 address-grids">
                <h4>Contact no :</h4>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+139 1710 0342</p>
                <p><span class="glyphicon glyphicon-print" aria-hidden="true"></span>+138 1923 0023</p>
            </div>
            <div class="col-md-4 address-grids">
                <h4>Email :</h4>
                <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:1072265002@qq.com">1072265002@qq.com</a></p>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="contact-form">
            <h4>Contact form</h4>
            <form id="Mail">
                <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="" style="width: 500px; margin-right: 110px;">
                <input type="text" id="address" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="" style="width: 500px;">
                <textarea type="text" id="context" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                <button class="btn1" onclick="SendMail()" style="right: 100px;">Send</button>
            </form>
        </div>
    </div>
</div>
<!--//contact-->
<!--footer-->
<%@include file="footer.jsp" %>
<!--footer-->
</body>
</html>