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
    private static final long serialVersionUID = 1;

    @EJB
    private ColisEJB colisEJB;

    public AddEtapeServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = 0;
        if (!req.getParameter("id").isEmpty()) {
            id = Long.parseLong(req.getParameter("id"));
        }
        req.setAttribute("id",id);
        req.getRequestDispatcher("/addEtape.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = 0;
        if (!req.getParameter("id").isEmpty()) {
            id = Long.parseLong(req.getParameter("id"));
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

        Etape etape = colisEJB.addEtape(id,latitude,longitude,emplacement,etat);

        Colis colis = colisEJB.findColis(id);
        req.setAttribute("colis",colis);
        req.getRequestDispatcher("/showColisByID.jsp").forward(req, resp);
    }
}
