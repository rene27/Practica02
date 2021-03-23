<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        <form action="Procesa" method="POST">
            Nombre:             <input type="text" name="nombre" value="" /><br>
            Apellido:           <input type="text" name="apellido" value="" /><br>
            Correo Electronico: <input type="email" name="email" value="" /><br>
            Contraseña:         <input type="text" name="contra" value="" /><br>
            
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
