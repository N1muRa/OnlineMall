<%@page import="Class.*" %><%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2017/1/3
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String phone = request.getParameter("phone");
    String code = session.getAttribute("code").toString();
    System.out.println(code+" "+phone);
    //SendMessage.Send(phone, code);
%>
