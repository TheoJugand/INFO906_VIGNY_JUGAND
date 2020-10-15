<%@ page import="colis.jpa.Colis" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: theos
  Date: 24/09/2020
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
         pageEncoding="ISO-8859-15" %>

<html>
<head>
    <title>Affichage Colis</title>
    <link href="index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<header>
    <h1 class="text-1">Gestion colis</h1>
</header>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h2 class="text-2">Affichage du colis :</h2>
        </div>
        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Poids (kg)</th>
                    <th scope="col">Valeur (¤)</th>
                    <th scope="col">Origine</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Date de création</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">${ colis.id }</th>
                    <td>${ colis.poids }</td>
                    <td>${ colis.valeur }</td>
                    <td>${ colis.origine }</td>
                    <td>${ colis.destination }</td>
                    <td>${ colis.dateColis }</td>
                </tr>
                </tbody>
            </table>
            <a class="btn btn-primary float-right" role="button" href="index.jsp" aria-pressed="true">Accueil</a>
        </div>
    </div>
    <div class="alert alert-success" role="alert">
        Votre colis a été créé !
    </div>
</div>


</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</html>
