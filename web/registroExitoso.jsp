<%-- 
    Document   : registroExitoso
    Created on : 5 ago 2025, 3:03:49 a.m.
    Author     : WI138
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Paciente"%>
<%
    Paciente p = (Paciente) request.getAttribute("paciente");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro Exitoso</title>
</head>
<body>
    <h1>Registro Exitoso</h1>
    <p>Paciente registrado: <strong><%= p.getNombre() %></strong></p>
    <p>Edad: <strong><%= p.getEdad() %> años</strong></p>
</body>
</html>
