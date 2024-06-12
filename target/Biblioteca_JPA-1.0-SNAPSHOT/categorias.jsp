<%-- 
    Document   : categorias
    Created on : 8 jun. 2024, 21:47:00
    Author     : Diman
--%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Categoria"%>
<%
    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" type="text/css" href="css/tables.css">
    </head>
    <body>
        <main class="table" id="categorias_table">
            <section class="table__header">
                <h1>Listado de Categorias</h1>
                <div class="new-book">
                    <a href="CategoriaServlet?action=add" class="new-book-btn" title="Nueva Categoria"></a>
                </div>
            </section>
            <section class="table__body">
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Descripcion</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Categoria item : categorias) {
                        %>
                        <tr>
                            <td><%= item.getId()%></td>
                            <td><%= item.getDescripcion()%></td>
                            <td>
                                <a href="CategoriaServlet?action=edit&id=<%= item.getId()%>">
                                    <img src="css/editar.png" alt="Editar" class="image-link">
                                </a>
                            </td>
                            <td>
                                <a href="CategoriaServlet?action=delete&id=<%= item.getId()%>" onclick="return(confirm('¿Está seguro de eliminar?'))">
                                    <img src="css/eliminar.png" alt="Eliminar" class="image-link">
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </section>
        </main>
    </body>
</html>
