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

@WebServlet("/AddColisServlet")
public class AddColisServlet extends HttpServlet {
    private static final long serialVersionUID = 1;

    @EJB
    private ColisEJB colisEJB;

    public AddColisServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // recuperation et parsing des parametres de la requete
        float poids = Float.parseFloat(request.getParameter("poids"));
        float valeur = Float.parseFloat(request.getParameter("valeur"));
        String origine = request.getParameter("origine");
        String destination = request.getParameter("destination");
        // appel de la methode d'ajout sur l'ejb
        Colis colis = colisEJB.addColis(poids, valeur,origine,destination);
        // ajout de la mesure dans la requete
        request.setAttribute("colis",colis);
        // transfert a la JSP d'affichage
        request.getRequestDispatcher("/showColis.jsp").forward(request, response);
    }}
