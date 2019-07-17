<%-- 
    Document   : edit
    Created on : 12/07/2019, 09:13:08 AM
    Author     : mache
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloOAD.PersonaOAD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                PersonaOAD oad = new PersonaOAD();
                int id=Integer.parseInt((String)request.getAttribute("idper"));
                Persona p = ( Persona)oad.list(id);
             %>   
               
        <h1>Modificar Persona</h1>
        <form action="Controlador">
            
            CEDULA:<br>
            <input type="text" name="textCed" value="<%= p.getCedula()%>"><br>
            Nombre:<br>
            <input type="text" name="textNom"value="<%= p.getNombre()%>"><br>
            <input type="hidden" name="textid" value="<%= p.getId()%>">
            
            
            
            <input type="submit" name="accion" value="actualizar">
            <a href="Controlador?accion=listar">Regresar</a>
        
        </form>
        </div>
        
    </body>
</html>
