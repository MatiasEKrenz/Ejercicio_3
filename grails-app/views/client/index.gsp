<%--
  Created by IntelliJ IDEA.
  User: mkrenz
  Date: 2019-04-26
  Time: 09:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<h2>Consulte por las agencias disponibles</h2>

<g:form controller="client" action="consultar" >
    <label>LONGITUD: </label>
    <g:textField name="longitud"/><br/>
    <label>LATITUD: </label>
    <g:textField name="latitud"/><br/>
    <label>RADIUS: </label>
    <g:textField name="radius"/><br/>
    <label>Site_id: </label>
    <g:textField name="site_id"/><br/>
    <label>Payment_method: </label>
    <g:textField name="payment_method"/><br/>
    <label>Limit: </label>
    <g:textField name="limit"/><br/>
    <label>Offset: </label>
    <g:textField name="offset"/><br/>

    <label>Criterio_orden: </label>
    <g:select id="type" name='criterio_orden'
              noSelection="${['null':'Selecciona un criterio...']}" from="${['address_line', 'agency_code', 'distance']}">
    </g:select><br/>

    <br/>
    <g:actionSubmit value="Consultar"/>
</g:form>


</body>
</html>