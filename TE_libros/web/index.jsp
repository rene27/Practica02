<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Productos</h1>
        <form action="Proceso" method="POST">
            Titulo: <input type="text" name="titulo" value="" /><br>
            Autor:  <input type="text" name="autor" value="" /><br>
            Resumen:<br>
                    <textarea name="resumen" rows="10" cols="40"></textarea><br>
            Medio:  <br>
                    <input type="radio" name="medio" value="1" />Fisico<br>
                    <input type="radio" name="medio" value="2" />Magnetico<br>
            <input type="submit" value="Enviar"/><br>
        </form>
    </body>
</html>
