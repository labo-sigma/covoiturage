package fr.sigway.ref

import org.apache.commons.lang.builder.HashCodeBuilder

class UtilisateurRole implements Serializable {

	Utilisateur utilisateur
	Role role

	boolean equals(other) {
		if (!(other instanceof UtilisateurRole)) {
			return false
		}

		other.utilisateur?.id == utilisateur?.id &&
			other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (utilisateur){
			 builder.append(utilisateur.id)
		}
		if (role){
			builder.append(role.id)
		}
		builder.toHashCode()
	}

	static UtilisateurRole get(long utilisateurId, long roleId) {
		find 'from UtilisateurRole where utilisateur.id=:utilisateurId and role.id=:roleId',
			[utilisateurId: utilisateurId, roleId: roleId]
	}

	static UtilisateurRole create(Utilisateur utilisateur, Role role, boolean flush = false) {
		new UtilisateurRole(utilisateur: utilisateur, role: role).save(flush: flush, insert: true)
	}

	static boolean remove(Utilisateur utilisateur, Role role, boolean flush = false) {
		UtilisateurRole instance = UtilisateurRole.findByUtilisateurAndRole(utilisateur, role)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Utilisateur utilisateur) {
		executeUpdate 'DELETE FROM UtilisateurRole WHERE utilisateur=:utilisateur', [utilisateur: utilisateur]
	}

	static void removeAll(Role role) {
		executeUpdate 'DELETE FROM UtilisateurRole WHERE role=:role', [role: role]
	}

	static mapping = {
		id composite: ['role', 'utilisateur']
		version false
	}
}
