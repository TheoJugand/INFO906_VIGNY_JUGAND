<jsp:useBean id="colis" scope="request" type="colis.jpa.Colis"/>
<%@ page import="colis.jpa.Colis" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: theos
  Date: 24/09/2020
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Affichage d'un colis</title>
    <link href="index.css" rel="stylesheet" type="text/css" >
</head>
<body>
<h2 class="text text-2">Affichage du colis :</h2>
<p>
    <label class="text text-4" > id : ${ colis.getId() } </label>  <br>
    <label class="text text-4" >Poids : ${ colis.getPoids() } </label><br>
    <label class="text text-4" >Valeur : ${ colis.getValeur() } </label><br>
    <label class="text text-4" >Origine : ${ colis.getOrigine() } </label><br>
    <label class="text text-4" >Destination : ${ colis.getDestination() }</label><br>
    <label class="text text-4" >Date : value="${ colis.dateColis }" </label><br>

</p>
<br>
<br>
<br>
<a class="text text-4" href="index.jsp"  >Revenir à la page d'accueil</a>
</body>
</html>
