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
<!doctype html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div role="navigation">
			<ul class="nav nav-tabs">
				<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
					<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</sec:ifAllGranted>
			</ul>
		</div>
		<div id="show-utilisateur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utilisateur">
			
				<g:if test="${utilisateurInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="utilisateur.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${utilisateurInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="utilisateur.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${utilisateurInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="utilisateur.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${utilisateurInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="utilisateur.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${utilisateurInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDomicile?.adresse}">
				<li class="fieldcontain">
					<span id="adresseDomicile-label" class="property-label"><g:message code="utilisateur.adresseDomicile.adresse.label"  /></span>
					
						<span class="property-value" aria-labelledby="adresseDomicile-label"><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDomicile?.codePostal}">
				<li class="fieldcontain">
					<span id="codePostalDomicile-label" class="property-label"><g:message code="utilisateur.adresseDomicile.codepostal.label"  /></span>
					
						<span class="property-value" aria-labelledby="codePostalDomicile-label"><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="codePostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDomicile?.ville}">
				<li class="fieldcontain">
					<span id="villeDomicile-label" class="property-label"><g:message code="utilisateur.adresseDomicile.ville.label"  /></span>
					
						<span class="property-value" aria-labelledby="villeDomicile-label"><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="ville"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDestination?.adresse}">
				<li class="fieldcontain">
					<span id="adresseDestination-label" class="property-label"><g:message code="utilisateur.adresseDestination.adresse.label"  /></span>
					
						<span class="property-value" aria-labelledby="adresseDestination-label"><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="adresse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDestination?.codePostal}">
				<li class="fieldcontain">
					<span id="codePostalDestination-label" class="property-label"><g:message code="utilisateur.adresseDestination.codepostal.label"  /></span>
					
						<span class="property-value" aria-labelledby="codePostalDestination-label"><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="codePostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDestination?.ville}">
				<li class="fieldcontain">
					<span id="villeDestination-label" class="property-label"><g:message code="utilisateur.adresseDestination.ville.label" /></span>
					
						<span class="property-value" aria-labelledby="villeDestination-label"><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="ville"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="utilisateur.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${utilisateurInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="utilisateur.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${utilisateurInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="utilisateur.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${utilisateurInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="utilisateur.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${utilisateurInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			
			<g:form class="form-horizontal">
				<div class="control-group">
					<div class="controls">
						<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
						<g:link class="btn btn-warning" action="edit" id="${utilisateurInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</g:form>
			
		</div>
	</body>
</html>
