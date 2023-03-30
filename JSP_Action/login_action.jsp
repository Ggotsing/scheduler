<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
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

    ArrayList<String> id_list = new ArrayList<String>();
    ArrayList<String> name_list = new ArrayList<String>();
        while(result.next()) {
            String tmpId = result.getString(1);   
            String tmpName = result.getString(3);  
            id_list.add("\"" + tmpId + "\"");  
            name_list.add("\"" + tmpName + "\"");  
          };

    if(id_list.size() > 0) {
        session.setAttribute("id", id_list.get(0));
        response.sendRedirect("../JSP/main.jsp");
    } else {
        response.sendRedirect("../index.html");
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




