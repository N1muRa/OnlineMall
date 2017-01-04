<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2017/1/3
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    JFileChooser filechooser=new JFileChooser();
    filechooser.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
    int returnVall=filechooser.showOpenDialog(filechooser);
    if(returnVall==JFileChooser.APPROVE_OPTION)
    {
        String filepath=filechooser.getSelectedFile().getAbsolutePath();
        System.out.print(filepath);
        filepath = "images" + filepath;
        response.getWriter().write("<img src=\""+ filepath +"\" alt=\"\" width=\"80\" height=\"80\" style=\"margin-bottom: 10px;\" id=\"Ava\"><br>");
    }
%>
