<%-- 
    Document   : libros
    Created on : 8 jun. 2024, 22:25:14
    Author     : Diman
--%>
<%@page import="com.emergentes.entidades.Libro"%>
<%@page import="java.util.List"%>
<%
    List<Libro> libros = (List<Libro>) request.getAttribute("libros");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" type="text/css" href="css/tables.css">
        <script src="js/pdf.js"></script>
    </head>
    <body>
        <main class="table" id="libros_table">
            <section class="table__header">
                <h1>Listado de Libros</h1>
                <div class="button-container">
                    <div class="new-book">
                        <a href="LibroServlet?action=add" class="new-book-btn" title="Nuevo Libro"></a>
                    </div>
                    <div class="export__file">
                        <label for="export-file" id="export-btn-pdf" class="export__file-btn" title="Export File"></label>
                    </div>
                </div>
            </section>
            <section class="table__body">
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Titulo</th>
                            <th>Autor</th>
                            <th style="text-align: center">Disponible</th>
                            <th>Categoria</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Libro item : libros) {
                        %>
                        <tr>
                            <td><%= item.getId()%></td>
                            <td><%= item.getTitulo()%></td>
                            <td><%= item.getAutor()%></td>
                            <td>
                                <p class="badge <%= (item.getDisponible() == 1) ? "disponible" : "nodisponible"%>">
                                    <%= (item.getDisponible() == 1) ? "DISPONIBLE" : "NO DISPONIBLE"%>
                                </p>
                            </td>
                            <td><%= item.getCategoriaId().getDescripcion()%></td>
                            <td>
                                <a href="LibroServlet?action=edit&id=<%= item.getId()%>">
                                    <img src="css/editar.png" alt="Editar" class="image-link">
                                </a>
                            </td>
                            <td>
                                <a href="LibroServlet?action=delete&id=<%= item.getId()%>" onclick="return(confirm('¿Está seguro de eliminar?'))">
                                    <img src="css/eliminar.png" alt="Eliminar" class="image-link">
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    <tbody>
                </table>
            </section>
        </main>
    </body>
</html>
