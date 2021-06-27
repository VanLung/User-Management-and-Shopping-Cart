<%-- 
    Document   : viewCart
    Created on : Jun 27, 2021, 2:06:42 PM
    Author     : NGUYEN VAN LUNG SE140193
--%>


<%@page import="lungnv.shopping.TeaDTO"%>
<%@page import="lungnv.shopping.CartDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Information</title>
    </head>
    <body>

        <%
            CartDTO cart = (CartDTO) session.getAttribute("CART");
            if (cart != null) {

        %>
        <h1>Your Selected Teas:</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <%                    int count = 1;
                    double total = 0.0;
                    for (TeaDTO tea : cart.getCart().values()) {
                        total += tea.getPrice() * tea.getQuantity();
                %>
            <form action="MainController">
                <tr>
                    <td>
                        <%= count++%>
                    </td>
                    <td>
                        <%= tea.getId()%>
                        <input type="hidden" name="id" value="<%= tea.getId()%>"/>
                    </td>
                    <td>
                        <%= tea.getName()%>
                    </td>
                    <td>
                        <%= tea.getQuantity()%>
                        <input type="number" min="1" name="quantity" value="<%= tea.getQuantity()%>"/>
                    </td>
                    <td>
                        <%= tea.getPrice()%>
                    </td>
                    <td>
                        <%= tea.getQuantity()%> *  <%= tea.getPrice()%>
                    </td>
                    <td>
                        <input type="submit" name="action" value="Modify"/>

                    </td>
                    <td>
                        <input type="submit" name="action" value="Remove"/>
                    </td>
                </tr>
            </form>
            <%
                }
            %>

        </tbody>
    </table>
    <h1>Total: <%= total%></h1></br>

    <%
    } else {
    %>
    <h1> Your selected nothing!</h1>
    <%
        }
    %>
    <a href="shopping.jsp">Back to shopping page</a>
</body>
</html>
