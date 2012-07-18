package fr.sigway.ref

class DataHelperService {

    def creerDonneesRef() {
		// Utilisateurs
		 for (i in 1..500){
	
			def codePostal
			
			if(new BigDecimal(i/100*100).intValue() % 10 == 0) {
				codePostal = 44000
			} else {
			 				
				if(i < 100) {		
					codePostal = 44000 + i*10
				} else {
					codePostal = 44000 + new BigDecimal(i/10).intValue()*10			
				}
				
			}
			 
			 
			def utilisateur = new Utilisateur()
			utilisateur.email = "uti" + i
			utilisateur.password = "uti" + i
			utilisateur.adresseDomicile = new Adresse()
			utilisateur.adresseDomicile.codePostal = codePostal
			utilisateur.adresseDestination = new Adresse()
			utilisateur.adresseDestination.codePostal = 44240
			utilisateur.adresseDomicile.save()
			utilisateur.adresseDestination.save()
			utilisateur.save()
			}
    }
}
