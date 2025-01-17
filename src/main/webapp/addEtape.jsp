<%@ page import="colis.jpa.Colis" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Maxime
  Date: 06/10/2020
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
         pageEncoding="ISO-8859-15" %>
<html>
<head>
    <title>Title</title>
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
            <h2 class="text-2">Ajouter une �tape : </h2>
        </div>
        <div class="container">
            <form class="form" method="post" action="AddEtapeServlet">
                <input type="hidden" value="${id}" name="id">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">Latitude</span>
                    </div>
                    <input type="text" class="form-control" value="${param.latitude }" name="latitude" id="latitude"
                           placeholder="Latitude" aria-label="Latitude" aria-describedby="basic-addon1">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2">Longitude</span>
                    </div>
                    <input type="text" class="form-control" value="${param.longitude }" name="longitude" id="longitude"
                           placeholder="Longitude" aria-label="Longitude" aria-describedby="basic-addon2">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Emplacement</span>
                    </div>
                    <input type="text" class="form-control" value="${param.emplacement }" name="emplacement"
                           id="emplacement"
                           placeholder="Emplacement" aria-label="Emplacement" aria-describedby="basic-addon3">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon4">Etat</span>
                    </div>
                    <input type="text" class="form-control" value="${param.etat }" name="etat"
                           id="etat"
                           placeholder="Etat" aria-label="Etat" aria-describedby="basic-addon4">
                </div>
                <input class="btn btn-primary float-right" type="submit" name="Valider" value="Ajouter une �tape">
            </form>
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
