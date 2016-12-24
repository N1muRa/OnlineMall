<%@ page import="java.sql.Connection" %>
<%@ page import="Class.Connector" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/24
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="user" class="Class.AccountBean" scope="session"></jsp:useBean>

<%
    String email = request.getParameter("email");
    String pwd = request.getParameter("password");

    String username = "";
    String password = "";

    try {
        Connection connection = Connector.GetInstance().getConn();
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM user WHERE U_Email = '" + email + "'";

        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()){
            password = resultSet.getString("U_Pwd");
            username = resultSet.getString("U_Name");
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

    if ((email!=null)){
            if ((pwd!=null)&&(pwd.trim().equals(password))){
%>
    <jsp:setProperty property="username" name="user"></jsp:setProperty>
    <jsp:setProperty property="password" name="user"></jsp:setProperty>
<%
                request.getRequestDispatcher("").forward(request,response);
                return;
            }
        }
%>
