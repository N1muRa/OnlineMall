<%@ page import="Class.SendMessage" %>
<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Class</title>
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
<%String code = session.getAttribute("code").toString();%>
<!--//header-->
<script type="text/javascript">

    function validate_user_info(myForm) {

        var phone = document.userForm.phone.value;
        var pwd = myForm.password.value;
        var code = document.userForm.code.value;

        if (myForm.firstName.value == "") {
            alert("Please input your first name!");
            return false;
        } else if (myForm.lastName.value == "") {
            alert("Please input your last name!");
            return false;
        } else if (phone == "") {
            alert("Please input your Phone Number!");
            return false;
        } else if (code != <%=code%>) {
            alert("Please input the right code!");
            return false;
        }
        else if (myForm.password.value == "") {
            alert("Please input your password!");
            return false;
        }
        else if (pwd.length < 6 || pwd.length > 11) {
            alert("Please input a password no shorter than 6 and no longer than 11!");
            return false;
        } else if (myForm.password.value != myForm.password2.value) {
            alert("Please input the same password!");
            return false;
        } else {
            return true;
        }
    }

    function submitFunc(act) {

        var isValid = true;

        if (act == "Register") {
            isValid = validate_user_info(userForm);
        }else {

            alert("VERIFICATION CODE HAS BEEN SENT!");

            var phone = document.userForm.phone.value;

            var xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    //document.getElementById("products").innerHTML = xmlhttp.responseText;
                    //document.getElementById("pages").innerHTML = "";
                }
            }

            xmlhttp.open("POST", "Send.jsp?phone=" + phone, true);
            xmlhttp.send();

            return;
        }

        if (isValid) {
            userForm.submit();
        }
    }
</script>
<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <form name="userForm" method="post" action="Register">
                <div class="register-top-grid">
                    <h3>Personal information</h3>
                    <div class="input">
                        <span>First Name<label>*</label></span>
                        <input type="text" name="firstName" value="">
                    </div>
                    <div class="input">
                        <span>Last Name<label>*</label></span>
                        <input type="text" name="lastName" value="">
                    </div>
                    <div class="input">
                        <span>Phone Number<label>*</label></span>
                        <input type="text" name="phone">
                    </div>
                    <div>
                        <span>Verification Code<label>*</label></span>
                        <input id="code" name="code" type="text" style="width:425px;margin-right:100px;"><input type="button"
                                                                                                      onclick="submitFunc('Send')"
                                                                                                      value="Send"
                                                                                                      style="font-size: 1.0em;color: #5D4B33;font-weight: 700;padding: 0.5em 3em;border: 7px solid #5D4B33;">
                    </div>
                    <a class="news-letter" href="#">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for
                            Newsletter</label>
                    </a>
                    <div class="clearfix"></div>
                </div>
                <div class="register-bottom-grid">
                    <h3>Login information</h3>
                    <div class="input">
                        <span>Password<label>*</label></span>
                        <input type="password" name="password" value="">
                    </div>
                    <div class="input">
                        <span>Confirm Password<label>*</label></span>
                        <input type="password" name="password2" value="">
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="register-but" align="center">
                    <input type="button" value="register" onclick="submitFunc('Register')"
                           style="font-size: 1.0em;color: #5D4B33;font-weight: 700;padding: 0.5em 3em;border: 7px solid #5D4B33;">
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--//account-->
<!--footer-->
<%@include file="footer.jsp" %>
<!--footer-->
</body>
</html>
