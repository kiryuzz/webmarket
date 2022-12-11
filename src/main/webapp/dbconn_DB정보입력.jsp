<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection conn = null;

    try {
        String url = "jdbc:mysql://db주소(url)";
        String user = "DB 유저 이름";
        String password = "DB 유저 비번";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
    } catch (SQLException ex) {
        out.println("DB 연결 실패 <br>");
        out.println("SQLException: " + ex.getMessage());
    }
%>