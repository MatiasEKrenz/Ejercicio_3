package ejercicio_3

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "client")
       // "/"(view:"/index")
       // "/client/consultar"(view:'/client/consultar')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
