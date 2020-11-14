<%--
  Created by IntelliJ IDEA.
  User: 寒尘
  Date: 2020/11/1
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
    <title>form</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>
<h1>使用 GET 方法读取数据</h1>
<ul>
    <li><p><b>phone</b>
        <%= request.getParameter("phone")%>
    </p></li>
    <li><p><b>email</b>
        <%= request.getParameter("email")%>
    </p></li>

    <li><p><b>sex</b>
        <%= request.getParameter("sex")%>
    </p></li>
</ul>
</body>
</html>
