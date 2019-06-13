<%-- 
    Document   : index
    Created on : 10-jun-2019, 21:17:24
    Author     : Informatica
--%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="beans.ServicioLocal"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! private ServicioLocal servicio; %>
<%
    InitialContext ctx=new InitialContext();
    servicio=
      (ServicioLocal)
  ctx.lookup("java:global/Pets_3332/Servicio!beans.ServicioLocal");
%>
<c:set var="productos" scope="page" 
value="<%=servicio.getProductos()%>"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo BD</title>
    </head>
    <body>
        <h1>Productos</h1>
        <c:forEach items="${pageScope.productos}" var="p">
            ${p.nombreProducto}, ${p.precioProducto}, 
            ${p.categoria.nombreCategoria}<br/>
        </c:forEach>
    </body>
</html>
