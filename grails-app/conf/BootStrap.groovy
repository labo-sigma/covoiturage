import fr.sigway.ref.Utilisateur

class BootStrap {

    def init = { servletContext ->
		
		if (!Utilisateur.count()) {
			new Utilisateur(username: "lcoiffard", password: "lcoiffard").save(failOnError: true)
			new Utilisateur(username: "tpoingt", password: "tpoingt").save(failOnError: true)
		}
		
    }
    def destroy = {
    }
}
