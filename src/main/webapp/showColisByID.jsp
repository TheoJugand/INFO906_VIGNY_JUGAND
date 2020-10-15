<%@ page import="colis.jpa.Colis" %>
<%@ page import="java.util.List" %>
<%@ page import="colis.jpa.Etape" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
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
        <c:choose>
        <c:when test="${not empty colis}">
        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Poids (kg)</th>
                    <th scope="col">Valeur (€)</th>
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
            <c:choose>
                <c:when test="${not empty colis.etapeArrayList}">
                    <h2 class="text-2">Etapes :</h2>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Date</th>
                            <th scope="col">Latitude</th>
                            <th scope="col">Longitude</th>
                            <th scope="col">Emplacement</th>
                            <th scope="col">Etat</th>
                            <th scope="col">Modifier</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${colis.etapeArrayList}" var="etape">
                            <tr>
                                <th>${ etape.dateEtape }</th>
                                <td>${ etape.latitude }</td>
                                <td>${ etape.longitude }</td>
                                <td>${ etape.emplacement }</td>
                                <td>${ etape.etat }</td>
                                <td>
                                    <form class="form" method="get" action="EditEtapeServlet">
                                        <div>
                                            <button type="submit" class="btn btn-primary" role="button"
                                                    aria-pressed="true">Modifier
                                            </button>
                                            <input type="hidden" value="${etape.id}" name="idEtape">
                                            <input type="hidden" value="${colis.id}" name="idColis">
                                        </div>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <div class="alert alert-warning" role="alert">
                        Il n'y a pas d'étapes pour ce colis!
                    </div>
                </c:otherwise>
            </c:choose>
            </c:when>
            <c:otherwise>
                <div class="alert alert-danger" role="alert">
                    Il n'y a pas de colis pour cet ID!
                </div>
            </c:otherwise>
            </c:choose>
            <div class="btn-group float-right" role="group" aria-label="Basic example">
                <form class="form" method="get" action="AddEtapeServlet">
                    <div>
                        <button type="submit" class="btn btn-primary" role="button" aria-pressed="true">Ajouter
                            une étape
                        </button>
                        <input type="hidden" value="${colis.id}" name="id">
                    </div>
                </form>
                <div>
                    <a class="btn btn-primary" style="margin-left: 15px" role="button" href="index.jsp"
                       aria-pressed="true">Accueil</a>
                </div>
            </div>
        </div>
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
