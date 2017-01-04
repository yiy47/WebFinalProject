<%-- 
    Document   : logout
    Created on : Dec 13, 2016, 12:28:42 PM
    Author     : yaoyi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
        session.setAttribute("email",null);
        session.invalidate();
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>
