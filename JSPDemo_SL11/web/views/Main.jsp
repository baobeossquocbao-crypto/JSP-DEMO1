<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
    </head>
    <body>
        <div>
            <%
                String user = (String)request.getAttribute("user");
            %>
            <h2>Java Web Application - Demo</h2>
            <h4>Account: <%= user %></h4>
            <div><a href="Accounts">Account Management</a> </div>
        </div>
    </body>
</html>