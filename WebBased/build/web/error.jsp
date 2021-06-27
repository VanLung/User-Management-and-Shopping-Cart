<%-- 
    Document   : error
    Created on : Jun 27, 2021, 2:06:09 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error: <%= session.getAttribute("ERROR_MESSAGE") %></h1>
    </body>
</html>
