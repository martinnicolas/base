<%-- 
    Document   : form
    Created on : 22/10/2017, 19:01:27
    Author     : martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty it.persona}">
<form method="POST" action="../personas/create">
</c:if>
<c:if test="${not empty it.persona}">
<form method="POST" action="../update/${it.persona.id}">
</c:if>
    <label for="dni">DNI</label><br/>
    <input type="text" name="dni" value="${it.persona.dni}"/><br/>
    <label for="apellido">Apellido</label><br/>
    <input type="text" name="apellido" value="${it.persona.apellido}"/><br/>
    <label for="nombre">Nombre</label><br/>
    <input type="text" name="nombre" value ="${it.persona.nombre}"/><br/>
    <br/>
    <input type="submit" value="Guardar"/>
</form>
