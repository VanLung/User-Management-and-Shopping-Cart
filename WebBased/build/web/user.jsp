<%-- 
    Document   : user
    Created on : Jun 27, 2021, 2:06:30 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>


<%@page import="lungnv.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
            if (user == null) {
                return;
            }
        %>
        <h1>Hello User Role: <%= user.getFullName()%> </h1>
        <h2>- About me</h2>
    <td><img src="assets/image/image_1.JPG" width="190px" height="230px"></br>
    </td>

    <a href= " https://metap.vn/749081 " > My information </a></br>



    <c:url var="logoutLink" value="MainController">
        <c:param name="action" value="Logout"></c:param>
    </c:url>
    <a href="${logoutLink}">Logout</a>
</body>
</html>