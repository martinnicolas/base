<%-- 
    Document   : show
    Created on : 22/10/2017, 18:58:51
    Author     : martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Base</title>
    </head>
    <body>
        <h4>Datos de la persona</h4>
        
        <p>DNI: <c:out value="${it.persona.dni}"/></p>
        <p>Apellido: <c:out value="${it.persona.apellido}"/></p>
        <p>Nombre: <c:out value="${it.persona.nombre}"/></p>
    </body>
</html>
