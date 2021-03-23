<%@page import="com.emergentes.Productos"%>
<%
    Productos e = new Productos();
    e = (Productos)request.getAttribute("prod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del Producto</h1>
        <p>Gracias por llenar la encuesta</p>
        <p>Los datos recibidos son: </p>
        <p>Producto:   <%=e.getProducto()  %></p>
        <p>Categoria:  <%=e.getCategoria()  %></p>
        <p>Existencia: <%=e.getExistencia()  %></p>
        <p>Precio:     <%=e.getPrecio()  %></p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
