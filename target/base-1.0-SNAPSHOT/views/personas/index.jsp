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
        <title>Proyecto Base</title>
    </head>
    <body>
        <h4>Listado de personas</h4>
        <table>
            <tr>
                <th>DNI</th>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${it.personas}" var="persona">
            <tr>
                <td><c:out value="${persona.dni}"/></td>
                <td><c:out value="${persona.apellido}"/></td>
                <td><c:out value="${persona.nombre}"/></td>
                <td><a href="base/personas/show"></a></td>
                <td><a href="base/personas/edit"></a></td>
                <td><a href="base/personas/destroy"></a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
