<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id_value = request.getParameter("id_value");
    String phone_value = request.getParameter("phone_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/scheduler_DB", "stageus", "1234");

    String sql = "select pw from user where id = ? and phone = ?";

    PreparedStatement query = connect.prepareStatement(sql);
    
    query.setString(1, id_value);
    query.setString(2, phone_value);

    ResultSet result = query.executeQuery();

    String pw = "";

    if(result.next()) {
        pw = result.getString("pw");
    } 
    connect.close();
%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p id="pw" style="display: none;"><%=pw%></p>
    <script src="../JavaScript/find_PW_action.js"></script>
</body>
</html>