<%@ page import="Class.Connector" %>
<%@ page import="Class.Commodity" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2016/12/19
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int ID = -1;
    ID = Integer.parseInt(request.getParameter("ID").trim());
    Vector<Commodity> commodities = (Vector<Commodity>) session.getAttribute("all");
    Commodity commodity = null;
    int count = commodities.size();
    if (ID != -1){
        for (int i = 0; i < count; i++ ){
            commodity = commodities.get(i);
            if (ID == commodity.getID()){
                break;
            }
        }
        System.out.println(commodity.getName());
        session.setAttribute("com",commodity);
        response.sendRedirect("single.jsp");
    }
%>

<%
//    int ID = -1;
//
//    ID = Integer.parseInt(request.getParameter("ID"));
//
//    if (ID != -1) {
//
//        Commodity commodity = new Commodity();
//
//        String co_name;
//        String co_img;
//        int co_price;
//        int co_num;
//        String co_brand;
//
//        try {
//            Connection connection = Connector.GetInstance().getConn();
//            Statement statement = connection.createStatement();
//
//            String sql = "SELECT * FROM commodity WHERE Co_ID = '" + ID + "'";
//
//            ResultSet resultSet = statement.executeQuery(sql);
//
//            while (resultSet.next()) {
//                co_name = resultSet.getString("Co_Name");
//                co_img = resultSet.getString("Co_Img");
//                co_price = Integer.parseInt(resultSet.getString("Co_Price"));
//                co_num = Integer.parseInt(resultSet.getString("Co_Number"));
//                co_brand = resultSet.getString("Co_Brand");
//
//                commodity.setBrand(co_brand);
//                commodity.setImage(co_img);
//                commodity.setName(co_name);
//                commodity.setNumber(co_num);
//                commodity.setPrice(co_price);
//                commodity.setID(ID);
//
//                //System.out.println(ID+" "+co_num+" "+co_price+" "+co_img+" "+co_name+" "+co_brand);
//            }
//
//            resultSet.close();
//            //connection.close();
//
//        } catch (SQLException e) {
//            //数据库连接失败异常处理
//            System.out.println("Fail");
//            e.printStackTrace();
//        } catch (Exception e) {
//            // TODO: handle exception
//            e.printStackTrace();
//        }
//
//        session.setAttribute("com", commodity);
//
//        response.sendRedirect("single.jsp?ID=" + ID);
//    }
%>
