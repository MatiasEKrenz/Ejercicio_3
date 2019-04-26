<%--
  Created by IntelliJ IDEA.
  User: mkrenz
  Date: 2019-04-26
  Time: 11:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<table style="width:100%">
    <tr>
        <g:each var="coso" in="${categories}">
            <th>${coso.address.address_line}</th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th>Ciudad: ${coso.address.city}</th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th>Pais: ${coso.address.country}</th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th>Código de agencia: ${coso.agency_code}</th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th>Distancia: ${coso.distance}</th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th><button type="button" onclick="like()">Like</button></th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th><button type="button" onclick="disLike()">DisLike</button></th>
        </g:each>
    </tr>
</table>

<script>
    function like() {
        document.getElementById("demo").innerHTML = "Like";
    }

    function disLike() {
        document.getElementById("demo").innerHTML = "Dislike";
    }
</script>

</body>
</html>
