<!--Sigway - covoiturage
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
 along with this program.  If not, see <http://www.gnu.org/licenses/>-->
 
<%@ page import="fr.sigway.ref.Utilisateur" %>

<%--  DONNES PERSONNELLES  --%>

<h4><g:message code="utilisateur.info.perso"  /></h4>
<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
	<label class="control-label" for="email">
		<g:message code="utilisateur.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="email" required="" value="${utilisateurInstance?.email}"/>
	</div>
</div>

<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label class="control-label" for="password">
		<g:message code="utilisateur.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="password" required="" value="${utilisateurInstance?.password}"/>
	</div>
</div>

<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
	<label class="control-label" for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
	</label>
	<div class="controls">
		<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
	</div>
</div>

<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
	<label class="control-label" for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
	</label>
	<div class="controls">
		<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
	</div>
</div>

<%--  ADRESSE DOMICILE  --%>
<h4><g:message code="utilisateur.adresseDomicile"  /></h4>
	<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'adresse', 'error')} ">
		<label class="control-label" for="adresseDomicile.adresse">
			<g:message code="utilisateur.adresseDomicile.adresse.label"  />
		</label>
		<div class="controls">
			<g:textField name="adresseDomicile.adresse" value="${utilisateurInstance?.adresseDomicile?.adresse}"/>
		</div>
	</div>
	
	<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'codePostal', 'error')} required ">
		<label class="control-label" for="adresseDomicile.codePostal">
			<g:message code="utilisateur.adresseDomicile.codepostal.label"  />
			<span class="required-indicator">*</span>
		</label>
		<div class="controls">
			<g:field min="1" max="99999" type="number"  required="" name="adresseDomicile.codePostal" value="${utilisateurInstance.adresseDomicile?.codePostal}"/>
		</div>
	</div>
	
	<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'ville', 'error')} ">
		<label class="control-label" for="adresseDomicile.ville">
			<g:message code="utilisateur.adresseDomicile.ville.label" />
		</label>
		<div class="controls">
			<g:textField name="adresseDomicile.ville" value="${utilisateurInstance?.adresseDomicile?.ville}"/>
		</div>
	</div>


<%--  ADRESSE DESTINATION  --%>
<h4><g:message code="utilisateur.adresseDestination"  /></h4>
<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'adresse', 'error')} ">
	<label class="control-label" for="adresseDestination.adresse">
		<g:message code="utilisateur.adresseDestination.adresse.label"  />
	</label>
	<div class="controls">
		<g:textField name="adresseDestination.adresse" value="${utilisateurInstance?.adresseDestination?.adresse}"/>
	</div>
</div>

<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'codePostal', 'error')} required">
	<label class="control-label" for="adresseDestination.codePostal">
		<g:message code="utilisateur.adresseDestination.codepostal.label"  />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:field type="number" min="1" max="99999" required="" name="adresseDestination.codePostal" value="${utilisateurInstance.adresseDestination?.codePostal}"/>
	</div>
</div>

<div class="control-group ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'ville', 'error')} ">
	<label class="control-label" for="adresseDestination.Ville">
		<g:message code="utilisateur.adresseDestination.ville.label"  />
	</label>
	<div class="controls">
		<g:textField name="adresseDestination.ville" value="${utilisateurInstance?.adresseDestination?.ville}"/>
	</div>
</div>

<%--  SI ADMINISTRATEUR  --%>
<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
<h4><g:message code="utilisateur.etat.compte"  /></h4>
	<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')} ">
		<label class="control-label" for="accountExpired">
			<g:message code="utilisateur.accountExpired.label" default="Account Expired" />
		</label>
		<div class="controls">
			<g:checkBox name="accountExpired" value="${utilisateurInstance?.accountExpired}" />
		</div>
	</div>
	
	<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')} ">
		<label class="control-label" for="accountLocked">
			<g:message code="utilisateur.accountLocked.label" default="Account Locked" />
			
		</label>
		<div class="controls">
			<g:checkBox name="accountLocked" value="${utilisateurInstance?.accountLocked}" />
		</div>
	</div>
	
	<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')} ">
		<label class="control-label" for="enabled">
			<g:message code="utilisateur.enabled.label" default="Enabled" />
			
		</label>
		<div class="controls">
			<g:checkBox name="enabled" value="${utilisateurInstance?.enabled}" />
		</div>
	</div>
	
	<div class="control-group ${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')} ">
		<label class="control-label" for="passwordExpired">
			<g:message code="utilisateur.passwordExpired.label" default="Password Expired" />
			
		</label>
		<div class="controls">
			<g:checkBox name="passwordExpired" value="${utilisateurInstance?.passwordExpired}" />
		</div>
	</div>
</sec:ifAllGranted>
