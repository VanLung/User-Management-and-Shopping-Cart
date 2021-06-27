<%-- 
    Document   : createUser
    Created on : Jun 27, 2021, 2:06:00 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>

<%@page import="lungnv.user.UserError"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <h1>Create new User</h1>
        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null) {
                userError = new UserError();
            }
        %>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID" required=""/>
            ${requestScope.USER_ERROR.getUserIDError()} </br>

            Full Name <input type="text" name="fullName" required=""/>
            ${requestScope.USER_ERROR.getFullNameError()} </br>

            Role ID <input type="text" name="roleID" required=""/>
            ${requestScope.USER_ERROR.getRoleIDError()} </br>

            Password <input type="password" name="password" required=""/></br>
            Confirm <input type="password" name="confirm" required=""/>
            ${requestScope.USER_ERROR.getConfirmError()} </br>

            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
            ${requestScope.USER_ERROR.getMessageError()} </br>

        </form>
            
             <c:url var="logoutLink" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
            <a href="${logoutLink}">Return to main page</a></br>
    </body>
</html>
