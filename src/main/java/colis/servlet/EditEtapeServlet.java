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
import java.util.List;

@WebServlet("/EditEtapeServlet")
public class EditEtapeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB colisEJB;

    public EditEtapeServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // recuperation et parsing des parametres de la requete
        long idColis = 0;
        if(!request.getParameter("idColis").isEmpty()) {
            idColis = Long.parseLong(request.getParameter("idColis"));
        }
        long idEtape = 0;
        if (!request.getParameter("idEtape").isEmpty()) {
            idEtape = Long.parseLong(request.getParameter("idEtape"));
        }
        // appel de l'ejb
        Etape etape = colisEJB.findEtape(idEtape);
        // ajout de la mesure dans la requete
        request.setAttribute("etape",etape);
        request.setAttribute("idEtape",idEtape);
        request.setAttribute("idColis",idColis);
        // transfert a la JSP d'affichage
        request.getRequestDispatcher("/editEtape.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long idEtape = 0;
        if (!req.getParameter("idEtape").isEmpty()) {
            idEtape = Long.parseLong(req.getParameter("idEtape"));
        }
        long idColis = 0;
        if (!req.getParameter("id").isEmpty()) {
            idColis = Long.parseLong(req.getParameter("id"));
        }
        double latitude = 0.0;
        if (!req.getParameter("latitude").isEmpty()) {
            latitude = Double.parseDouble(req.getParameter("latitude"));
        }
        double longitude = 0.0;
        if (!req.getParameter("longitude").isEmpty()) {
            longitude = Double.parseDouble(req.getParameter("longitude"));
        }
        String emplacement = req.getParameter("emplacement");
        String etat = req.getParameter("etat");

        Etape etape = colisEJB.updateEtape(idEtape,latitude,longitude,emplacement,etat);

        Colis colis = colisEJB.findColis(idColis);
        req.setAttribute("colis",colis);
        req.getRequestDispatcher("/showColisByID.jsp").forward(req, resp);    }
}
