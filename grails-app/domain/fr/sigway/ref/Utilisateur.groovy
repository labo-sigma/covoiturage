/*Sigway - covoiturage
Copyright (C) 2012 - Teddy Poingt
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

class Utilisateur {

	transient springSecurityService

	String email
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	String nom
	String prenom
	Adresse adresseDomicile
	Adresse adresseDestination

	static constraints = {
		email blank: false, unique: true
		password blank: false	
		nom nullable: true
		prenom nullable: true
		adresseDomicile nullable: false
		adresseDestination nullable: false

		
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UtilisateurRole.findAllByUtilisateur(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
