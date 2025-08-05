<%-- 
    Document   : registro
    Created on : 5 ago 2025, 3:03:19 a.m.
    Author     : WI138
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Paciente</title>
</head>
<body>
    <h1>Registrar Nuevo Paciente</h1>
    <form action="RegistroPacienteServlet" method="post">
        Nombre: <input type="text" name="nombre" required><br>
        Edad: <input type="number" name="edad" required><br>
        <input type="submit" value="Registrar">
    </form>
</body>
</html>
