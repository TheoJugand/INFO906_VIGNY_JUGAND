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
</head>
<body>
<body>
<table>
    <tr><th>Id</th><th>Poids</th><th>Valeur</th><th>Origine</th></tr>
    <% for (Colis colis:(List<Colis>) request.getAttribute("colis")
            ) {
    %>
        <tr>
            <td>${ colis.id }</td>
            <td>${ colis.poids }</td>
            <td>${ colis.valeur }</td>
            <td>${ colis.origine }</td>
            <td>${ colis.dateMesure }</td>
        </tr>
        <%
            }
        %>
</table>
<a href="index.jsp"  >Revenir à la page d'accueil</a>
</body>

</body>
</html>
