<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 寒尘
  Date: 2020/10/23
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>this is jsp</h1>

<h1>
    hello,tomcat
    <%
        String i = "world";
        out.print("<h1>hello, " + i + "</h1>");
    %>
    <% Date date = new Date();
    out.println( "<h2 align=\"center\">" +date.toString()+"</h2>" + "<br/>");

    %>
    <h1>显示当前时间</h1>
    <%
        Date dNow = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        out.println(ft.format(dNow));
    %>
</h1>

</body>
</html>
