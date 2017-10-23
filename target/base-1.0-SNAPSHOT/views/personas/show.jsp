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
        
        <p>DNI: <c:out value="${persona}"/></p>
        <p>Apellido: <c:out value="${persona.apellido}"/></p>
        <p>Nombre: <c:out value="${persona.nombre}"/></p>
        <p><a href="base/personas/show"></a></p>
        <p><a href="base/personas/edit"></a></p>
        <p><a href="base/personas/destroy"></a></p>
    </body>
</html>
