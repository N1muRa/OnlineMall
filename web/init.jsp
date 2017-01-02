<%@ page import="java.util.Vector" %>
<%@ page import="Class.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2017/1/2
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Vector<Commodity> commodities = new Vector<Commodity>();

    try {
        String sql = "SELECT * FROM commodity";
        ResultSet resultSet = Connector.GetInstance().doSelect(sql);
        while (resultSet.next()){
            Commodity com = new Commodity();

            com.setID(Integer.parseInt(resultSet.getString("Co_ID")));
            com.setName(resultSet.getString("Co_Name"));
            com.setColor(resultSet.getString("Co_Color"));
            com.setFunc(resultSet.getString("Co_Fun"));
            com.setPrice(Integer.parseInt(resultSet.getString("Co_Price")));
            com.setNumber(Integer.parseInt(resultSet.getString("Co_Number")));
            com.setBrand(resultSet.getString("Co_Brand"));
            com.setImage(resultSet.getString("Co_Img"));

            commodities.add(com);
        }
    }catch(SQLException e) {
        //数据库连接失败异常处理
        System.out.println("Fail");
        e.printStackTrace();
    }catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }

    session.setAttribute("all",commodities);

    ShoppingCart sc = new ShoppingCart();

    session.setAttribute("sc",sc);
%>
