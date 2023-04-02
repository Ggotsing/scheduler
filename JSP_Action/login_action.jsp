<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id_value = request.getParameter("id_value");
    String pw_value = request.getParameter("pw_value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/scheduler_DB", "stageus", "1234");

    String sql = "select * from user where id=? and pw=?";

    PreparedStatement query = connect.prepareStatement(sql);

    query.setString(1, id_value);
    query.setString(2, pw_value);

    ResultSet result = query.executeQuery();

    String name_value = "";
    session.removeAttribute("id_value");
    session.removeAttribute("name_value");

    while(result.next()){ 
        id_value = result.getString("id");
        name_value = result.getString("name");
    
        session.setAttribute("id_value", id_value);
        session.setAttribute("name_value", name_value);    
    }
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
    <script src="../JavaScript/login_action.js"></script>
</body>
</html>




