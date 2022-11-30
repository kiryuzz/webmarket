<%--
  Created by IntelliJ IDEA.
  User: Jiys
  Date: 2022-12-01
  Time: 오전 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
  String id = request.getParameter("cartId");
  if(id == null || id.trim().equals("")) {
    response.sendRedirect("cart.jsp");
    return;
  }

  session.invalidate();

  response.sendRedirect("cart.jsp");
%>