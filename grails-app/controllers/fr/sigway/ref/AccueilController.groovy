/*Sigway - covoiturage
 Copyright (C) 2012 - Laurent Coiffard
 
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
package fr.sigway.ref

class AccueilController {

    def rechercherCorrespondanceCodePostal() {
		String codePostal = params.codePostal
		render view: "/index", model: [codePostal:codePostal, correspondances:Utilisateur.nombreCovoitureursPotentiels(new Integer(codePostal))]
	}
	
	def creerCompte() {
		
		render view:"/utilisateur/create", model:[utilisateurInstance: new Utilisateur(params)]
	}
	
	/* sauver le compte utilisateur */
	def save() {
		def utilisateurInstance = new Utilisateur(params)
		utilisateurInstance.setEnabled(true)
		UtilisateurRole utilisateurRole = new UtilisateurRole()
		utilisateurRole.setUtilisateur(utilisateurInstance)
		utilisateurRole.setRole(Role.findByAuthority("ROLE_PROFIL_COVOITUREUR"))
		
		if (!utilisateurInstance.adresseDomicile?.save() ||
			!utilisateurInstance.adresseDestination?.save() ||
			!utilisateurInstance.save() ||
			!utilisateurRole.save()) {
			render(view: "/utilisateur/create", model: [utilisateurInstance: utilisateurInstance])
			return
		}

			
			
		flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label'), utilisateurInstance.getEmail()])
		render view: "/index", model:[]
		
	}
}
