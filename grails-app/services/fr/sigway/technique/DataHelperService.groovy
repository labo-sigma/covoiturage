/*Sigway - covoiturage
 Copyright (C) 2012 - Teddy Poingt
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>*/
package fr.sigway.technique

import fr.sigway.ref.Adresse;
import fr.sigway.ref.Role;
import fr.sigway.ref.Utilisateur;
import fr.sigway.ref.UtilisateurRole;
import fr.sigway.ref.utilisateur.ProfilEnum;

class DataHelperService {

    Map creerDonneesRef() {
		Map ref = [:]
		
		//  Profil
		ref.role = [:]
		Role role = new Role(authority:(ProfilEnum.Profil.PROFIL_ADMIN.profil), description:'Administrateur')
		role.save()
		ref.role.admin = role
		role = new Role(authority:(ProfilEnum.Profil.PROFIL_COVOITUREUR.profil), description:'co-voitureur')
		role.save()
		ref.role.covoitureur = role
		return ref
    }
	
	Map creerDonneesUtilisateur(Map ref, def password){
		Map utilisateurs = [:]
		
		Adresse adresseAdmin = new Adresse(adresse:"3 Rue Newton", codePostal:"44240", ville:" La Chapelle-sur-Erdre")
		adresseAdmin.save()
		Utilisateur utilisateurAdmin  = new Utilisateur(email:"admin", password:password , nom:"nomAdmin" , prenom:"prenomAdmin" , adresseDomicile:adresseAdmin, adresseDestination:adresseAdmin, enabled: true )
		utilisateurAdmin.save()
		UtilisateurRole.create(utilisateurAdmin, ref.role.admin)
		utilisateurs.admin = utilisateurAdmin
		
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
			utilisateur.password = password 
			utilisateur.adresseDomicile = new Adresse()
			utilisateur.adresseDomicile.codePostal = codePostal
			utilisateur.adresseDestination = new Adresse()
			utilisateur.adresseDestination.codePostal = 44240
			utilisateur.enabled =true
			utilisateur.adresseDomicile.save()
			utilisateur.adresseDestination.save()
			utilisateur.save()
			UtilisateurRole.create(utilisateur, ref.role.covoitureur)
		}
		
		return utilisateurs
	}
}
