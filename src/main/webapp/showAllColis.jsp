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
    <title>Liste des colis</title>
    <link href="index.css" rel="stylesheet" type="text/css" >
</head>
<body>
<body>
<table class="text">
    <tr><th class="text text-2">Id</th><th class="text text-2">Poids</th><th class="text text-2">Valeur</th><th class="text text-2">Origine</th></tr>
    <% for (Colis colis:(List<Colis>) request.getAttribute("colis")
            ) {
    %>
        <tr>
            <td class="text text-4">${ colis.id }</td>
            <td class="text text-4">${ colis.poids }</td>
            <td class="text text-4">${ colis.valeur }</td>
            <td class="text text-4">${ colis.origine }</td>
        </tr>
        <%
            }
        %>
</table>
<a class="text text-4" href="index.jsp"  >Revenir à la page d'accueil</a>
</body>

</body>
</html>
