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
import org.codehaus.groovy.grails.plugins.springsecurity.GormUserDetailsService
import org.springframework.security.authentication.dao.DaoAuthenticationProvider
import org.springframework.security.authentication.dao.SystemWideSaltSource

// Place your Spring DSL code here
beans = {
	/** sel pour renforcer la sécurité du mot de passe */
	saltSource(SystemWideSaltSource) {
		systemWideSalt = "!sigway01"
	}

}
