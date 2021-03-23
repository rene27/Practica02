<%@page import="com.emergentes.Libros"%>
<%
    Libros e = new Libros();
    e = (Libros)request.getAttribute("lib");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del Libro</h1>
        <p>Los datos recibidos son: </p>
        <p>Producto:   <%=e.getTitulo()  %></p>
        <p>Categoria:  <%=e.getAutor()  %></p>
        <p>Existencia: <%=e.getResumen()  %></p>
        <p>Medio:<% if(e.getMedio()==1){
                    out.print("Fisico");
                }
                else{
                    out.print("Magnetico");
                }
            %>      
        </p>
        <a href="index.jsp">Volver</a>
    </body>
</html>
