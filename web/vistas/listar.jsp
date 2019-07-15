<%-- 
    Document   : listar
    Created on : 12/07/2019, 09:13:38 AM
    Author     : mache
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
            <h1>Personas</h1>
            <a href="Controlador?accion=add">Agragar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CEDULA</th>
                        <th>NOMBRE</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                PersonaOAD oad =new PersonaOAD();
                List<Persona>list= oad.listar();
                Iterator<Persona>iter=list.iterator();
                Persona per=null;
                
                while (iter.hasNext()) {
                        per = iter.next();
                        
                    
                %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getCedula()%></td>
                        <td><%= per.getNombre()%></td>
                        <td>
                            <a href="Controlador?accion" Editar </a>
                            <a Remove</a>
                        </td>
                    </tr>
                <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
