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
            <th><button type="button" onclick="like(coso.agency_code)">Like</button></th>
        </g:each>
    </tr>
    <tr>
        <g:each var="coso" in="${categories}">
            <th><button type="button" onclick="disLike(coso.agency_code)">DisLike</button></th>
        </g:each>
    </tr>
</table>

<p id="demo"></p>

<script>
    function like(agency_code) {

       /* var elemento = ${categories}.find(agency_code);

        $.post('/client/guardar', {
            category:'client',
            type:'premium'
        });*/
        document.getElementById("demo").innerHTML = "Like";
    }

    function disLike(agency_code) {
        document.getElementById("demo").innerHTML = "Dislike";
    }
</script>

</body>
</html>
