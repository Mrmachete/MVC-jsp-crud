/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import ModeloOAD.PersonaOAD;
import Modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mache
 */
public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    Persona p= new Persona();
    PersonaOAD oad = new PersonaOAD();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String acceso="";
       String action=request.getParameter("accion");
       
       
       if(action.equalsIgnoreCase("listar")){
           acceso=listar;
       }else if (action.equalsIgnoreCase("add")) {
           acceso=add;
           
                    
        }
       else if (action.equalsIgnoreCase("agregar")) {
           String Cedula=request.getParameter("textCed");
           String Nombre=request.getParameter("textNom");
           p.setCedula(Cedula);
           p.setNombre(Nombre);
           oad.add(p);
           acceso=listar;
           
            
        }
       else if(action.equalsIgnoreCase("editar")){
           
           request.setAttribute("idper", request.getParameter("id"));
           acceso=edit;
       }
       else if (action.equalsIgnoreCase("actualizar")){
        int id =Integer.parseInt(request.getParameter("textid"));
           String ced =request.getParameter("textCed");
           String nom =request.getParameter("textNom");
           p.setId(id);
           p.setCedula(ced);
           p.setNombre(nom);
           oad.edit(p);
           acceso=listar;
           
           
       }
       else if (action.equalsIgnoreCase("eliminar")){
           int id = Integer.parseInt(request.getParameter("id"));
           p.setId(id);
           oad.eliminar(id);
           acceso=listar;
       }

        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
