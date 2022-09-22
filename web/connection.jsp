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
        // 연결문자열 jdbc:oracle:thin:@호스트:포트/sid
        String jdbcUrl="jdbc:oracle:thin:@localhost:1521/xe";
        String dbId="ora_user"; // 아이디
        String dbPass="son"; // 비밀번호
        Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이버
        conn= DriverManager.getConnection(jdbcUrl, dbId, dbPass); // 접속.
        System.out.println("오라클에 접속되었습니다.");
    }catch (Exception e){
        System.out.println("오라클에 접속 에러...");
        e.printStackTrace();
    }
%>
</body>
</html>
