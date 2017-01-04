<%@ page import="Class.Connector" %>
<%@ page import="Class.Commodity" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/29
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String brand = request.getParameter("brand");
    String function = request.getParameter("fun");
    String height = request.getParameter("height");
    String color = request.getParameter("color");
    Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");

    System.out.print(commodities.size());

    for (int i=0;i<commodities.size();i++){
        Commodity commodity = commodities.get(i);
        if ((color == null || commodity.getColor().contains(color))&&(height == null || height.equals(commodity.getType()))&&(brand == null||brand.equals(commodity.getBrand())&&(function == null || function.equals(commodity.getFunc())))){
            response.getWriter().write("<div class=\"product-grid\">");
            response.getWriter().write("<a href=\"_single.jsp?ID=" + commodity.getID() + "\">");
            response.getWriter().write("<div class=\"more-product\"><span> </span></div>");
            response.getWriter().write("<div class=\"product-img b-link-stripe b-animate-go  thickbox\">");
            response.getWriter().write("<img src=\"" + commodity.getImage() + "\" class=\"img-responsive\" alt=\"\">");
            response.getWriter().write("<div class=\"b-wrapper\">");
            response.getWriter().write("<h4 class=\"b-animate b-from-left  b-delay03\">");
            response.getWriter().write("<button>View</button></h4></div></div></a>");
            response.getWriter().write("<div class=\"product-info simpleCart_shelfItem\"><div class=\"product-info-cust prt_name\"><h4>" + commodity.getName() + "</h4>");
            response.getWriter().write("<span class=\"item_price\">" + Math.floor(commodity.getPrice() + 0.5) + "</span>");
            response.getWriter().write("<div class=\"ofr\"><p class=\"pric1\"><del>" + Math.floor(commodity.getPrice() * 1.15 + 0.5) + "</del></p><p class=\"disc\">[15% Off]</p></div>");
            response.getWriter().write("<input type=\"text\" class=\"item_quantity\" value=\"1\" /><input type=\"button\" class=\"item_add items\" value=\"Add\">");
            response.getWriter().write("<div class=\"clearfix\"> </div></div></div></div>");
        }
    }
%>