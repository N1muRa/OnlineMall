<%--
  Created by IntelliJ IDEA.
  User: Vam
  Date: 2017/1/4
  Time: 03:27
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="org.apache.commons.mail.EmailException" %>
<%@ page import="org.apache.commons.mail.HtmlEmail" %>
<%@ page import="Class.Mail" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String To_address=request.getParameter("address");
    String Context=request.getParameter("context");

    Mail mail=new Mail();
    mail.setHost("smtp.163.com");
    mail.setSender("13917100342@163.com");
    mail.setReceiver(To_address);
    mail.setUsername("13917100342@163.com");
    mail.setPassword("smd521");
    mail.setSubject("JavaMail");
    mail.setMessage(Context);

    HtmlEmail email=new HtmlEmail();
    email.setHostName(mail.getHost());
    email.setCharset(Mail.ENCODEING);
    email.addTo(mail.getReceiver());
    email.setFrom(mail.getSender(),mail.getName());
    email.setAuthentication(mail.getUsername(), mail.getPassword());
    email.setMsg(mail.getMessage());
    email.send();
    response.getWriter().write("<input type=\"text\" value=\"Name\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Name';}\" required=\"\" style=\"width: 500px; margin-right: 110px;\">\n");
    response.getWriter().write("<input type=\"text\" id=\"address\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email';}\" required=\"\" style=\"width: 500px;\">");
    response.getWriter().write("<textarea type=\"text\" id=\"context\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Message...';}\" required=\"\">Message...</textarea>");
    response.getWriter().write("<button class=\"btn1\" onclick=\"SendMail()\" style=\"right: 100px;\">Send</button>");
%>
