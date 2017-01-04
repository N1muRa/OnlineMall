<%@ page import="Class.Connector" %>
<%@ page import="Class.Commodity" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/19
  Time: 0:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String brand = request.getParameter("brand");
    String function = request.getParameter("fun");

    String sql;

    if (brand!=null&&function!=null) sql = "SELECT * FROM commodity WHERE Co_Brand = '" + brand + "' AND Co_Fun = '"+ function +"'";
    else if (brand!=null && function == null) sql = "SELECT * FROM commodity WHERE Co_Brand = '" + brand + "'";
    else if (brand == null && function != null) sql = "SELECT * FROM commodity WHERE Co_Fun = '" + function + "'";
    else sql = "SELECT * FROM commodity";

    Vector<Commodity> coms = new Vector<Commodity>();
//    Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");
//    int num = commodities.size();
//
//    for (int i=0;i<num;i++){
//        Commodity commodity = commodities.get(i);
//        if((brand == null || brand == commodity.getBrand())&&(function == null||function == commodity.getFunc())){
//            coms.add(commodity);
//        }
//    }
    try {
        ResultSet resultSet = Connector.GetInstance().doSelect(sql);

        while (resultSet.next()){
            Commodity com = new Commodity();com.setID(Integer.parseInt(resultSet.getString("Co_ID")));
            com.setName(resultSet.getString("Co_Name"));
            com.setColor(resultSet.getString("Co_Color"));
            com.setFunc(resultSet.getString("Co_Fun"));
            com.setPrice(Integer.parseInt(resultSet.getString("Co_Price")));
            com.setNumber(Integer.parseInt(resultSet.getString("Co_Number")));
            com.setBrand(brand);
            com.setImage(resultSet.getString("Co_Img"));
            com.setType(resultSet.getString("Co_Type"));

            coms.add(com);
        }
        resultSet.close();
    } catch(SQLException e) {
        //数据库连接失败异常处理
        System.out.println("Fail");
        e.printStackTrace();
    }catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }

    session.setAttribute("coms",coms);

    response.sendRedirect("products.jsp");

%>