<%-- 
    Document   : admin
    Created on : Jun 27, 2021, 2:05:07 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="lungnv.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>



        <c:choose>
            <c:when test="${sessionScope.LOGIN_USER != null}">

                <c:if test="${param.LOGIN_USER.roleID == 'AD'}">
                    <c:redirect url="admin.jsp"/>
                </c:if> 

            </c:when>    

            <c:otherwise>

                <c:if test="${param.LOGIN_USER.roleID == 'US'}">
                    <c:redirect url="user.jsp"/>
                </c:if> 

            </c:otherwise>
        </c:choose>


        <h1>
            Welcome: ${sessionScope.LOGIN_USER.fullName}
        </h1>

        <form action="MainController">
            Search: <input type="text" name="search" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dto" varStatus="counter" items="${requestScope.LIST_USER}">
                        <form action="MainController">

                            <tr>
                                <td>${counter.count}</td>
                                <td>${dto.userID}</td>
                                <td>
                                    <!--${dto.fullName}-->
                                    <input type="text" name="fullName" value="${dto.fullName}"/>
                                </td>
                                <td>
                                    <!-- ${dto.roleID}-->
                                    <input type="text" name="roleID" value="${dto.roleID}"/>
                                </td>
                                <td>${dto.password}</td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="userID" value="${dto.userID}"/>
                                    <input type="hidden" name="search" value="${param.search}"/>
                                </td>
                                <td>
                                    <c:url var="deleteLink" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${dto.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${deleteLink}">Delete</a>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </c:if>

    <c:url var="logoutLink" value="MainController">
        <c:param name="action" value="Logout"></c:param>
    </c:url>
    <a href="${logoutLink}">Logout</a>
</body>
</html>