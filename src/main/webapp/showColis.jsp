<%--
  Created by IntelliJ IDEA.
  User: theos
  Date: 24/09/2020
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>Affichage Colis</title>
    <link href="index.css" rel="stylesheet" type="text/css" >
</head>
<body>
<p>
    <label class="text text-4" > id : ${ colis.getId() } </label>  <br>
    Poids : ${ colis.getPoids() } <br>
    Valeur : ${ colis.getValeur() } <br>
    Origine : ${ colis.getOrigine() } <br>
    Destination : ${ colis.getDestination() } <br>
    Date : value="${ colis.date }" <br>
</p>
<a class="text text-4" href="index.jsp"  >Revenir � la page d'accueil</a>

</body>
</html>
