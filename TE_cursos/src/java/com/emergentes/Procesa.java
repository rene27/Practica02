package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Procesa", urlPatterns = {"/Procesa"})
public class Procesa extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String cursos = request.getParameter("cursos");
        
        Cursos mensajero = new Cursos();
        
        mensajero.setNombre(nombre);
        mensajero.setApellido(apellido);
        mensajero.setCurso(cursos);
                
        request.setAttribute("cur", mensajero);
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }

}
