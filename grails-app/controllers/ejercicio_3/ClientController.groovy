package ejercicio_3

import grails.converters.JSON
import groovy.json.JsonSlurper

class ClientController {

    def index() {
        def url = new URL("https://api.mercadolibre.com/sites")
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "application/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        [sites: result]
    }

    def consultar() {

        def url = new URL("http://localhost:4567/agencias/" + params.site_id + "/" + params.payment_method + "/" + params.longitud + "," + params.latitud + "," + params.radius + "?limit=" + params.limit + "&offset=" + params.offset + "&criterio_orden=" + params.criterio_orden)
       // def url = new URL("http://localhost:4567/agencias/MLA/rapipago/-31.412971,-64.18758,300?limit=8&offset=1&criterio_orden=address_line");
        def connection = (HttpURLConnection) url.openConnection()
        connection.setRequestMethod("GET")
        connection.setRequestProperty("Accept", "application/json")
        connection.setRequestProperty("User-Agent", "Mozilla/5.0")
        JsonSlurper json = new JsonSlurper()
        def result = json.parse(connection.getInputStream())
        def resultData = result.data

        //render ([categories: result as JSON])
        [categories: resultData]
       // [cla: result]
    }
}
//    <g:actionSubmit value="Consultar"/>