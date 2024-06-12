<%-- 
    Document   : index
    Created on : 8 jun. 2024, 21:11:17
    Author     : Diman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link rel="stylesheet" type="text/css" href="css/diman.css">
    </head>
    <body>
        <h1>Biblioteca</h1>
        <ul>
            <li>
                <div class="image-container">
                    <a href="CategoriaServlet">
                        <img src="css/categoria.png" alt="Categorias" class="image-link">
                        <div class="image-text">CATEGORIAS</div>
                    </a>
                </div>
            </li>
            <li>
                <div class="image-container">
                    <a href="LibroServlet">
                        <img src="css/libro.png" alt="Libros" class="image-link">
                        <div class="image-text">LIBROS</div>
                    </a>
                </div>
            </li>
        </ul>
    </body>  
</html>
