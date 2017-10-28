<%-- 
    Document   : index
    Created on : 29/09/2017, 18:48:10
    Author     : martin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/assets/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>" rel="stylesheet"/>
        <script src="<c:url value="/assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"/>"></script>
        <title>Proyecto Base</title>
    </head>
    <body>
        <h4>Listado de personas</h4>        
        <a href="<c:url value="/personas/new"/>">Nueva persona</a>
        <table>
            <tr>
                <th>DNI</th>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>Accion</th>
            </tr>
            <c:forEach items="${it.personas}" var="persona">
            <tr>
                <td>${persona.dni}</td>
                <td>${persona.apellido}</td>
                <td>${persona.nombre}</td>
                <td>
                    <a href="<c:url value="/personas/show/${persona.id}"/>">Ver</a> | 
                    <a href="<c:url value="/personas/edit/${persona.id}"/>">Editar</a> | 
                    <a href="<c:url value="/personas/destroy/${persona.id}"/>">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
