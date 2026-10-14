<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="viewmodels.AccountDetail" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <title>AccountList</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h2>Accounts</h2>
            <div><a href="AccountCreate">Create New Account</a></div>
            <div>
                <h4>List of Accounts</h4>
                <table>
                    <tr>
                        <th>AccountId</th>
                        <th>Password</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                    <% List<AccountDetail> accounts = (ArrayList<AccountDetail>)request.getAttribute("accounts"); %>
                    <% for (AccountDetail acc : accounts) { %>
                        <tr>
                            <td><%= acc.AccountId %></td>
                            <td><%= acc.Password %></td>
                            <td><%= acc.Role.RoleName %></td>
                            <td>
                                <a href="AccountDetails?id=<%= acc.AccountId %>">Details</a> | 
                                <a href="AccountEdit?id=<%= acc.AccountId %>">Edit</a> | 
                                <a href="AccountDelete?id=<%= acc.AccountId %>">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </table>
            </div>
        </div>
    </body>
</html>