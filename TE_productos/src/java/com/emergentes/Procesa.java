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
        String producto = request.getParameter("producto");
        String categoria = request.getParameter("categoria");
        Integer existencia=Integer.parseInt(request.getParameter("existencia"));
        Double precio=Double.parseDouble(request.getParameter("precio"));
        
        Productos mensajero = new Productos();
        mensajero.setProducto(producto);
        mensajero.setCategoria(categoria);
        mensajero.setExistencia(existencia);
        mensajero.setPrecio(precio);
        
        request.setAttribute("prod", mensajero);
        request.getRequestDispatcher("salida.jsp").forward(request, response);
        
    }
}
