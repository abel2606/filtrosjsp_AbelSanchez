/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import beans.Pokemon;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Abe
 */
public class RegistrarPokemon extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/home.jsp";

        if (action == null) {
            action = "agregarPokemon";
        }

        if ("agregarPokemon".equals(action)) {
            String nombre = request.getParameter("nombre");
            String numero = request.getParameter("numero");
            String tipo = request.getParameter("tipo");
            String evolucion = request.getParameter("evolucion");
            int poder = Integer.valueOf(request.getParameter("poder"));
            String descripcion = request.getParameter("descripcion");
            
            Pokemon nuevoPokemon = new Pokemon(nombre, numero, tipo, evolucion, poder, descripcion);

            // Obtener la lista de Pokémon de la sesión
            HttpSession session = request.getSession();
            List<Pokemon> pokemones = (List<Pokemon>) session.getAttribute("pokemones");

            if (pokemones
                    == null) {
                pokemones = new ArrayList<>();
                session.setAttribute("pokemones", pokemones);
            }

            pokemones.add(nuevoPokemon);

            System.out.println(
                    "SE REGISTRA POKEMON");
            request.setAttribute(
                    "pokemon", nuevoPokemon);
        }

        this.getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
