<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/22
  Time: 8:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    try{
        String jdbcUrl="jdbc:oracle:thin:@localhost:1521/xe";
        String dbId="ora_user";
        String dbPass="son";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn= DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        System.out.println("오라클에 접속되었습니다.");
    }catch (Exception e){
        System.out.println("오라클에 접속 에러...");
        e.printStackTrace();
    }
%>
</body>
</html>
