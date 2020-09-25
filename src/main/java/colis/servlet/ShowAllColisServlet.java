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

@WebServlet("/ShowAllColisServlet")
public class ShowAllColisServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB colisEJB;

    public ShowAllColisServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // recuperation et parsing des parametres de la requete
        String piece = request.getParameter("piece");
        // appel de l'ejb
        List<Colis> list = colisEJB.findAllColis();
        // ajout de la liste de mesures dans la requete
        request.setAttribute("colis",list);
        // transfert a la JSP d'affichage
        request.getRequestDispatcher("/showAllColis.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
