package colis.servlet;


import colis.ejb.ColisEJB;
import colis.jpa.Colis;
import colis.jpa.Etape;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddEtapeServlet")
public class AddEtapeServlet extends HttpServlet {

    @EJB
    private ColisEJB colisEJB;

    public AddEtapeServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // recuperation et parsing des parametres de la requete
        double latitude = Double.parseDouble(request.getParameter("latitude"));
        double longitude = Double.parseDouble(request.getParameter("longitude"));
        String emplacement = request.getParameter("emplacement");
        String etat = request.getParameter("etat");

        long id = Long.parseLong(request.getParameter("id"));
        // appel de l'ejb
        Colis colis = colisEJB.findColis(id);
        Etape etape = new Etape(latitude, longitude, emplacement, etat, colis);
        Colis colisEtape = colisEJB.addEtapeColis(colis, etape);

        request.setAttribute("colis",colisEtape);
        // transfert a la JSP d'affichage
        request.getRequestDispatcher("/addEtape.jsp").forward(request, response);

    }


}
