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
    String function = request.getParameter("function");

    if (brand!=null){

        Vector<Commodity> coms = new Vector<Commodity>();

        String co_name;
        String co_img;
        int co_price;
        int co_num;
        int co_id;

        try {
            Connection connection = Connector.GetInstance().getConn();
            Statement statement = connection.createStatement();

            String sql = "SELECT * FROM commodity WHERE Co_Brand = '" + brand + "'";

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                co_name = resultSet.getString("Co_Name");
                co_img = resultSet.getString("Co_Img");
                co_price = Integer.parseInt(resultSet.getString("Co_Price"));
                co_num = Integer.parseInt(resultSet.getString("Co_Number"));
                co_id = Integer.parseInt(resultSet.getString("Co_ID"));


                Commodity com = new Commodity();

                com.setBrand(brand);
                com.setImage(co_img);
                com.setName(co_name);
                com.setNumber(co_num);
                com.setPrice(co_price);
                com.setID(co_id);

                coms.add(com);

                //System.out.println(co_id+" "+co_num+" "+co_price+" "+co_img+" "+co_name+" "+brand);
            }

            resultSet.close();
            //connection.close();

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        session.setAttribute("coms",coms);

    }else if (function!=null){

        Vector<Commodity> coms = new Vector<Commodity>();

        String co_name;
        String co_img;
        int co_price;
        int co_num;
        int co_id;

        try {
            Connection connection = Connector.GetInstance().getConn();
            Statement statement = connection.createStatement();

            String sql = "SELECT * FROM commodity WHERE Co_Function = '" + function + "'";

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                co_name = resultSet.getString("Co_Name");
                co_img = resultSet.getString("Co_Img");
                co_price = Integer.parseInt(resultSet.getString("Co_Price"));
                co_num = Integer.parseInt(resultSet.getString("Co_Number"));
                co_id = Integer.parseInt(resultSet.getString("Co_ID"));

                Commodity com = new Commodity();

                com.setBrand(brand);
                com.setImage(co_img);
                com.setName(co_name);
                com.setNumber(co_num);
                com.setPrice(co_price);
                com.setID(co_id);

                coms.add(com);

                //System.out.println(co_id+" "+co_num+" "+co_price+" "+co_img+" "+co_name+" "+brand);
            }

            resultSet.close();
            //connection.close();

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        session.setAttribute("coms",coms);

    }else {
        Vector<Commodity> coms = new Vector<Commodity>();

        String co_name;
        String co_img;
        int co_price;
        int co_num;
        int co_id;

        try {
            Connection connection = Connector.GetInstance().getConn();
            Statement statement = connection.createStatement();

            String sql = "SELECT * FROM commodity";

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                co_name = resultSet.getString("Co_Name");
                co_img = resultSet.getString("Co_Img");
                co_price = Integer.parseInt(resultSet.getString("Co_Price"));
                co_num = Integer.parseInt(resultSet.getString("Co_Number"));
                co_id = Integer.parseInt(resultSet.getString("Co_ID"));

                Commodity com = new Commodity();

                com.setBrand(brand);
                com.setImage(co_img);
                com.setName(co_name);
                com.setNumber(co_num);
                com.setPrice(co_price);
                com.setID(co_id);

                coms.add(com);

                //System.out.println(co_id+" "+co_num+" "+co_price+" "+co_img+" "+co_name+" "+brand);
            }

            resultSet.close();
            //connection.close();

        } catch(SQLException e) {
            //数据库连接失败异常处理
            System.out.println("Fail");
            e.printStackTrace();
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        session.setAttribute("coms",coms);

    }

    response.sendRedirect("products.jsp");

%>