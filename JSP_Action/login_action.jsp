<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    session.removeAttribute("id_value");
    session.removeAttribute("name_value");

    String input_id = request.getParameter("input_id");
    String input_pw = request.getParameter("input_pw");

    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/scheduler_DB", "stageus", "1234");

    String sql = "select * from user where id=? and pw=?";

    PreparedStatement query = connect.prepareStatement(sql);

    query.setString(1, input_id);
    query.setString(2, input_pw);

    ResultSet result = query.executeQuery();

    while(result.next()){ 
        String id_value = result.getString("id");
        String name_value = result.getString("name");
        
        session.setAttribute("id_value", id_value);
        session.setAttribute("name_value", name_value);    
    }

    String name_value = (String)session.getAttribute("name_value");
    
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
    <div id="name_value" style="display: none;"><%=name_value%></div>
    <script src="../JavaScript/login_action.js"></script>
</body>
</html>




