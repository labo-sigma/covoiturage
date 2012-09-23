class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/contact"(view:"/contact")
		"/aPropos"(view:"/aPropos")
		
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
