<%-- 
    Document   : form
    Created on : 22/10/2017, 19:01:27
    Author     : martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="../personas/create">
            <label for="dni">DNI</label><br/>
            <input type="text" name="dni" value="${it.persona.dni}"/><br/>
            <label for="apellido">Apellido</label><br/>
            <input type="text" name="apellido" value="${it.persona.apellido}"/><br/>
            <label for="nombre">Nombre</label><br/>
            <input type="text" name="nombre" value ="${it.persona.nombre}"/><br/>
            <br/>
            <input type="submit" value="Guardar"/>
        </form>
    </body>
</html>
