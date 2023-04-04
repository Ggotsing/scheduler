<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String phone_value = request.getParameter("phone_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/scheduler_DB", "stageus", "1234");

    String sql = "select id from user where phone = ?";

    PreparedStatement query = connect.prepareStatement(sql);
    
    query.setString(1, phone_value);

    ResultSet result = query.executeQuery();

    String id = "";

    if(result.next()) {
        id = result.getString("id");
    } 
    connect.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p id="id" style="display: none;"><%=id%></p>
    <script src="../JavaScript/find_ID_action.js"></script>
</body>
</html>