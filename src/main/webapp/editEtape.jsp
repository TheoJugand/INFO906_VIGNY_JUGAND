<%--
  Created by IntelliJ IDEA.
  User: theos
  Date: 15/10/2020
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<header>
    <h1 class="text-1">Gestion colis</h1>
</header>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h2 class="text-2">Modifier une étape : </h2>
        </div>
        <div class="container">
            <form class="form" method="post" action="EditEtapeServlet">
                <input type="hidden" value="${idEtape}" name="idEtape">
                <input type="hidden" value="${idColis}" name="id">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">Latitude</span>
                    </div>
                    <input type="text" class="form-control" value="${etape.latitude}" name="latitude" id="latitude"
                           placeholder="${etape.latitude}" aria-label="Latitude" aria-describedby="basic-addon1">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2">Longitude</span>
                    </div>
                    <input type="text" class="form-control" value="${etape.longitude }" name="longitude" id="longitude"
                           placeholder="${etape.longitude}" aria-label="Longitude" aria-describedby="basic-addon2">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Emplacement</span>
                    </div>
                    <input type="text" class="form-control" value="${etape.emplacement }" name="emplacement"
                           id="emplacement"
                           placeholder="${etape.emplacement}" aria-label="Emplacement" aria-describedby="basic-addon3">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon4">Etat</span>
                    </div>
                    <input type="text" class="form-control" value="${etape.etat }" name="etat"
                           id="etat"
                           placeholder="${etape.etat}" aria-label="Etat" aria-describedby="basic-addon4">
                </div>
                <input class="btn btn-primary float-right" type="submit" name="Valider" value="Modifier une étape">
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
