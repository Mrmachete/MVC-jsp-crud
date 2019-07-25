<%-- 
    Document   : edit
    Created on : 12/07/2019, 09:13:08 AM
    Author     : mache
--%>

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
            <%
                PersonaOAD oad = new PersonaOAD();
                int id = Integer.parseInt((String) request.getAttribute("idper"));
                Persona p = (Persona) oad.list(id);
            %>   
            <section class=" container border border-primary col-7 "> 
                <h1>Modificar Persona</h1>
                <form action="Controlador">

                    <div class="form-row">
                        <div class="col-md-6 mb-3">

                            <label> CEDULA:</label>
                            <input type="text" class="form-control" name="textCed" value="<%= p.getCedula()%>"><br>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Nombre:</label>
                            <input type="text" class="form-control" name="textNom"value="<%= p.getNombre()%>"><br>
                            
                            <input type="hidden" name="textid" value="<%= p.getId()%>">

                        </div>

                    </div>
                    <input type="submit" name="accion" value="actualizar">
                    <a href="Controlador?accion=listar">Regresar</a>
                    <br> <br>
                </form>
            </section>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
