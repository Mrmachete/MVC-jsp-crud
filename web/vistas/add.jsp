<%-- 
    Document   : add
    Created on : 12/07/2019, 09:13:24 AM
    Author     : mache
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <div>
        <h1>Agregar Persona</h1>
        <form action="Controlador">
            
            CEDULA:<br>
            <input type="text" name="textCed"><br>
            Nombre:<br>
            <input type="text" name="textNom"><br>
            <input type="submit" name="accion" value="agregar">
            <a href="Controlador?accion=listar">Regresar</a>
        
        </form>
        </div>
    </body>
</html>
