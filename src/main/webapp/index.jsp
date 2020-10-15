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
            <h2 class="text-2">Ajouter un colis : </h2>
        </div>
        <div class="container">
            <form class="form" method="get" action="AddColisServlet">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">Poids</span>
                    </div>
                    <input type="text" class="form-control" value="${param.poids }" name="poids" id="poids"
                           placeholder="Poids" aria-label="Poids" aria-describedby="basic-addon1">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2">Valeur</span>
                    </div>
                    <input type="text" class="form-control" value="${param.valeur }" name="valeur" id="valeur"
                           placeholder="Valeur" aria-label="Valeur" aria-describedby="basic-addon2">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Origine</span>
                    </div>
                    <input type="text" class="form-control" value="${param.origine }" name="origine" id="origine"
                           placeholder="Origine" aria-label="Origine" aria-describedby="basic-addon3">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon4">Destination</span>
                    </div>
                    <input type="text" class="form-control" value="${param.destination }" name="destination"
                           id="destination"
                           placeholder="Destination" aria-label="Destination" aria-describedby="basic-addon4">
                </div>
                <input class="btn btn-primary float-right" type="submit" name="Valider" value="Ajouter un colis">
            </form>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <h2 class="text-2">Afficher un colis : </h2>
        </div>
        <div class="container">
            <form method="get" action="ShowColisByIDServlet">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon5">ID</span>
                    </div>
                    <input type="text" class="form-control" value="${param.id }" name="id"
                           id="id"
                           placeholder="ID" aria-label="ID" aria-describedby="basic-addon5">
                </div>
                <input class="btn btn-primary float-right" type="submit" name="Afficher" value="Afficher">
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>
</html>
