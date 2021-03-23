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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String contraseña = request.getParameter("contra");
        
        Usuario mensajero = new Usuario();
        mensajero.setNombre(nombre);
        mensajero.setApellido(apellido);
        mensajero.setEmail(email);
        mensajero.setContraseña(contraseña);
        
        request.setAttribute("usua", mensajero);
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }


}
