<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id_value = request.getParameter("id_value");
    String pw_value = request.getParameter("pw_value");
    String name_value = request.getParameter("name_value");
    String phone_value = request.getParameter("phone_value");
    String position_value = request.getParameter("position_value");
    String department_value = request.getParameter("department_value");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/scheduler_DB", "stageus", "1234");

    String sql = "select * from user where id = ?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, id_value);
    
    ResultSet result_id_check = query.executeQuery();

    if(result_id_check.next()) {
        out.println("<script>window.opener.alert('이미 존재하는 아이디입니다.'); window.close;</script>");
    } else {
        sql = "insert into user(id, pw, name, phone, position, department) values(?, ?, ?, ?, ?, ?)";
        PreparedStatement query2 = connect.prepareStatement(sql);
        query2.setString(1, id_value);
        query2.setString(2, pw_value);
        query2.setString(3, name_value);
        query2.setString(4, phone_value);
        query2.setString(5, position_value);
        query2.setString(6, department_value);
        query2.executeUpdate();
        out.println("<script>window.opener.confirm('가입되었습니다 !\n새로운 아이디로 로그인 해주세요');</script>");
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
    <script src="../JavaScript/create_account_action.js"></script>
</body>
</html>