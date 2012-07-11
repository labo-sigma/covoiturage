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
import org.codehaus.groovy.grails.commons.GrailsApplication;
import org.springframework.security.authentication.dao.SaltSource
import org.springframework.security.authentication.encoding.PasswordEncoder

import fr.sigway.ref.Utilisateur
import fr.sigway.technique.DataHelperService

class BootStrap {
	
	/** dependency injection for the password encoder */
	PasswordEncoder passwordEncoder
	
	/** sel pour renforcer la sécurité du mot de passe */
	SaltSource sigwaySaltSource
	
	/**Injecté*/
	DataHelperService dataHelperService
	
	GrailsApplication grailsApplication

    def init = { servletContext ->
		initialiserDonnees()

		
    }
    def destroy = {
    }
	
	void initialiserDonnees(){
		def initDataConfig = grailsApplication.config.sigway.env.initData
		def password = passwordEncoder.encodePassword(initDataConfig.password, sigwaySaltSource.getSalt(null))
		def ref = dataHelperService.creerDonneesRef()
		dataHelperService.creerDonneesUtilisateur(ref, password)
	}
}
