<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta Para Desarrolladores</h1>
        <form action="Procesa" method="POST">
            Nombre:  <input type="text" name="nombre" value="" /><br>
            Apellido:<input type="text" name="apellido" value="" /><br>
            Curso:
            <select name="cursos" id="cars">
                <option value="Reposteria">Reposteria</option>
                <option value="Mecanica">Mecanica</option>
                <option value="Programacion">Programacion</option>
                <option value="Peluqueria">Peluqueria</option>
            </select><br>
            
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
