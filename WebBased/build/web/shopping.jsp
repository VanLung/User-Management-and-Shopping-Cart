<%-- 
    Document   : shopping
    Created on : Jun 27, 2021, 2:06:21 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yummy Tea</title>
    </head>
    <body>
        <h1>Welcome to our tea farm</h1>
        <form action = "MainController">
            Select your tea:
            <select name="cmbTea">
                <option value="T01-Pink Tea-15">Pink Tea </option>
                <option value="T02-Lemon Tea-10">Lemon Tea </option>
                <option value="T03-Black Tea-35">Black Tea </option>
                <option value="T04-Peach Tea-50">Peach Tea </option>
                <option value="T05-Herbal Tea-40">Herbal Tea </option>
            </select>
            <input type="submit" name="action" value="Select"/>
            <input type="submit" name="action" value="view Cart"/>
        </form>
        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message != null) {
        %>
        <h1>
            <%= message%>
        </h1>
        <%
            }
        %>
        <c:url var="logoutLink" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
        <a href="${logoutLink}">Return to main page</a>
    </body>
</html>

