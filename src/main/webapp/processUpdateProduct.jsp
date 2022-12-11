<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Jiys
  Date: 2022-12-12
  Time: 오전 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbconn.jsp"%>
<%
    String filename = "";
    String realFolder = "D:\\_Class_\\22-2\\jsp\\upload";   //절대 경로
    String encType = "utf-8";   //인코딩
    int maxSize = 5 * 1024 * 1024;  //최대 업로드 파일 크기 5MB

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    String productId = multi.getParameter("productId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("manufacturer");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");

    Integer price;

    if (unitPrice.isEmpty()) {
        price = 0;
    } else {
        price = Integer.valueOf(unitPrice);
    }

    long stock;

    if (unitsInStock.isEmpty()) {
        stock = 0;
    } else {
        stock = Long.valueOf(unitsInStock);
    }

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select * from product where p_id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        if (fileName != null) {
            sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=?, p_fileName=? WHERE p_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, description);
            pstmt.setString(4, manufacturer);
            pstmt.setString(5, category);
            pstmt.setLong(6, stock);
            pstmt.setString(7, condition);
            pstmt.setString(8, fileName);
            pstmt.setString(9, productId);
            pstmt.executeUpdate();
        } else {
            sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitsInStock=?, p_condition=? WHERE p_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, description);
            pstmt.setString(4, manufacturer);
            pstmt.setString(5, category);
            pstmt.setLong(6, stock);
            pstmt.setString(7, condition);
            pstmt.setString(8, productId);
            pstmt.executeUpdate();
        }
    }
    if (rs != null) {
        rs.close();
    }
    if (pstmt != null) {
        pstmt.close();
    }
    if (conn != null) {
        conn.close();
    }

    response.sendRedirect("editProduct.jsp?edit=update");

%>