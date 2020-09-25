<%--
  Created by IntelliJ IDEA.
  User: theos
  Date: 24/09/2020
  Time: 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP INFO906</title>
</head>
<body>
    <h1>Accueil</h1>
    <h2>Ajouter une mesure : </h2>
    <form method="get" action="AddColisServlet">
        Poids : <input name="poids"  type="text"><br>
        Valeur : <input name="valeur"  type="text"><br>
        Origine : <input name="origine"  type="text" value="${param.origine }" >
        <input type="submit" name="Valider"  value="OK">
    </form>
    <h2>Affichage des mesures :</h2>
    <form method="get" action="ShowAllColisServlet">
        Afficher tous les colis : <input type="submit" name="Afficher"  value="Afficher">
    </form>
</body>
</html>
