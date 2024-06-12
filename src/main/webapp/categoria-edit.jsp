<%-- 
    Document   : categoria-edit
    Created on : 8 jun. 2024, 21:42:18
    Author     : Diman
--%>
<%@page import="com.emergentes.entidades.Categoria"%>
<%
    Categoria cate = (Categoria) request.getAttribute("categoria");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" type="text/css" href="css/edit.css">
    </head>
    <body>
        <h1>Registrar Categoria</h1>
        <form action="CategoriaServlet" method="POST">
            <label>Descripcion:</label>
            <input type="hidden" name="id" value="<%= cate.getId()%>">
            <input type="text" name="descripcion" value="<%= cate.getDescripcion()%>">
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>
