<%--
  Created by IntelliJ IDEA.
  User: Maxime
  Date: 06/10/2020
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP INFO906</title>
    <link href="index.css" rel="stylesheet" type="text/css" >
</head>
<body>
    <h2 class="text text-2"> Ajouter une étape : </h2>
    <form class="form" method="get" action="AddEtapeServlet">
        <label class="text text-4" for="latitude">Latitude : </label>
        <input type="text" name="latitude" id="latitude" ><br>
        <label class="text text-4" for="longitude">Longitude : </label>
        <input type="text" name="longitude" id="longitude" ><br>
        <label class="text text-4" for="emplacement">Emplacement : </label>
        <input type="text" name="emplacement" id="emplacement" value="${param.emplacement }"><br>
        <label class="text text-4" for="etat">État : </label>
        <input type="text" name="etat" id="etat" value="${param.etat }" ><br>
        <input class="submit" type="submit" name="Valider"  value="OK">
        <label class="text text-4" for="idcolis">ID colis : </label>
        <input type="text" name="idcolis" id="idcolis" ><br>
    </form>

</body>
</html>
