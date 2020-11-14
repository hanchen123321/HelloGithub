<%--
  Created by IntelliJ IDEA.
  User: 寒尘
  Date: 2020/11/1
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ifelseTest</title>
</head>
<body>
    <%!
        int i = 11;
    %>
    <%
        if (i % 2 == 0){
    %>
            <h1>This is even number</h1>
    <%
        }else {
    %>
            <h1>This is odd number</h1>
    <%
        }
    %>
</body>
</html>
