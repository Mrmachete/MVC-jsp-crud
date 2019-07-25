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
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">   


        <title>JSP Page</title>
    </head>
    <body>
        <div>
             <section class=" container border border-primary col-10"> 
            <h1>Personas</h1>
            <a class="btn btn-link" href="Controlador?accion=add">Agragar Nuevo</a>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">CEDULA</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaOAD oad = new PersonaOAD();
                    List<Persona> list = oad.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;

                    while (iter.hasNext()) {
                        per = iter.next();


                %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getCedula()%></td>
                        <td><%= per.getNombre()%></td>
                        <td>
                            
                              <a class="btn btn-success" href="Controlador?accion=editar&id=<%=per.getId()%>"role="button">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%=per.getId()%>"role="button">Eliminar</a>
                           
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                     </section>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
