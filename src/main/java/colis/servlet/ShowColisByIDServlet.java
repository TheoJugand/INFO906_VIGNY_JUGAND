package colis.servlet;

import colis.ejb.ColisEJB;
import colis.jpa.Colis;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ShowColisByIDServlet")
public class ShowColisByIDServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB colisEJB;

    public ShowColisByIDServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // recuperation et parsing des parametres de la requete
        String piece = request.getParameter("piece");
        long id = Long.parseLong(request.getParameter("id"));
        // appel de l'ejb
        Colis colis = colisEJB.findColis(id);
        // ajout de la mesure dans la requete
        request.setAttribute("colis",colis);
        // transfert a la JSP d'affichage
        request.getRequestDispatcher("/showColisByID.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
