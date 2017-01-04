<%@ page import="java.util.Vector" %>
<%@ page import="Class.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
            com.setType(resultSet.getString("Co_Type"));

            commodities.add(com);
        }

        resultSet.close();

    }catch(SQLException e) {
        //数据库连接失败异常处理
        System.out.println("Fail");
        e.printStackTrace();
    }catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }

    for (int i = 0; i < commodities.size(); i++ ){

        try {
            String sql = "SELECT * FROM Description WHERE Name = '" + commodities.get(i).getName() + "'";

            ResultSet resultSet = Connector.GetInstance().doSelect(sql);

            while (resultSet.next()){
                commodities.get(i).setDescription1(resultSet.getString("Description-1"));
                commodities.get(i).setDescription2(resultSet.getString("Description-2"));
            }
        }catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }


    }

    List<ShoppingList> commodityList = new ArrayList<ShoppingList>();

    try {
        String sql = "SELECT * FROM list WHERE L_Note = 0 ORDER BY L_ID DESC limit 2";
        ResultSet resultSet = Connector.GetInstance().doSelect(sql);
        while (resultSet.next()){
            ShoppingList shoppingList = new ShoppingList();

            shoppingList.setCo_ID(resultSet.getString("Co_ID"));
            shoppingList.setL_Count(resultSet.getString("L_Count"));
            shoppingList.setL_Time(resultSet.getString("L_Time"));
            shoppingList.setCu_Phone(resultSet.getString("Cu_Phone"));

            commodityList.add(shoppingList);
        }
    } catch (SQLException e) {
        //数据库连接失败异常处理
        System.out.println("Fail");
        e.printStackTrace();
    } catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }

    String code = "";

    for (int i = 0; i < 6; i++){
        code +=(int)(Math.random()*10);
    }
    //System.out.println(code);
    session.setAttribute("code", code);

    session.setAttribute("SL",commodityList);

    session.setAttribute("all",commodities);
%>
