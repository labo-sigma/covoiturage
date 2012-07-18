import fr.sigway.ref.Utilisateur

class BootStrap {

	def dataHelperService
	
    def init = { servletContext ->
		dataHelperService.creerDonneesRef()

		
    }
    def destroy = {
    }
}
