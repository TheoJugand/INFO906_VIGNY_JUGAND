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
    <link href="index.css" rel="stylesheet" type="text/css" >
</head>
<body>
    <h1 class="text text-1">Accueil</h1> <br>
    <h2 class="text text-2">Ajouter un colis : </h2>
    <form class="form" method="get" action="AddColisServlet">
        <label class="text text-4" for="poids">Poids : </label>
        <input type="text" name="poids" id="poids" ><br>
        <label class="text text-4" for="poids">Valeur : </label>
        <input type="text" name="valeur" id="valeur" ><br>
        <label class="text text-4" for="poids">Origine : </label>
        <input type="text" name="origine" id="origine" value="${param.origine }"><br>
        <label class="text text-4" for="poids">Destination : </label>
        <input type="text" name="destination" id="destination" ><br>
        <input class="submit" type="submit" name="Valider"  value="OK">
    </form>
    <br>
    <br>
    <br>
    <h2 class="text text-3">Affichage des colis :</h2>
    <form method="get" action="ShowAllColisServlet">
        <label class="text text-4" for="Afficher">Afficher tous les colis : </label>
        <input class="submit" type="submit" name="Afficher"  value="Afficher" id="Afficher">
    </form>
</body>
</html>
