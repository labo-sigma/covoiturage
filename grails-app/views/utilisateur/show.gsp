<!-- Sigway - covoiturage
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
 along with this program.  If not, see <http://www.gnu.org/licenses/> -->

<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span2">
				<sec:ifAnyGranted roles="ROLE_PROFIL_COVOITUREUR,ROLE_PROFIL_ADMIN">
					<div class="well">
						<ul class="nav nav-list">
							<li class="nav-header">\${entityName}</li>
							<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
								<li>
									<g:link class="list" action="list">
										<i class="icon-list"></i>
										<g:message code="default.list.label" args="[entityName]" />
									</g:link>
								</li>
								<li>
									<g:link class="create" action="create">
										<i class="icon-plus"></i>
										<g:message code="default.create.label" args="[entityName]" />
									</g:link>
								</li>
							</sec:ifAllGranted>
							<li class="active">
								<g:link class="edit" action="edit" id="${utilisateurInstance.id}">
									<i class="icon-edit"></i>
									<g:message code="default.edit.label" args="[entityName]" />
								</g:link>
							</li>
							<li>
								<g:link controller="logout" action="index" >
									<g:message code="accueil.deconnexion"/>
								</g:link>
							</li>
						</ul>
					</div>
				</sec:ifAnyGranted>
			</div>
			
			<div class="span8">

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${utilisateurInstance?.email}">
						<dt><g:message code="utilisateur.email.label" default="Email" /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance}" field="email"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.password}">
						<dt><g:message code="utilisateur.password.label" default="Password" /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance}" field="password"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.nom}">
						<dt><g:message code="utilisateur.nom.label" default="Nom" /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance}" field="nom"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.prenom}">
						<dt><g:message code="utilisateur.prenom.label" default="Prenom" /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance}" field="prenom"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDomicile?.adresse}">
						<dt><g:message code="utilisateur.adresseDomicile.adresse.label"  /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="adresse"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDomicile?.codePostal}">
						<dt><g:message code="utilisateur.adresseDomicile.codepostal.label"  /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="codePostal"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDomicile?.ville}">
						<dt><g:message code="utilisateur.adresseDomicile.ville.label"  /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDomicile}" field="ville"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDestination?.adresse}">
						<dt><g:message code="utilisateur.adresseDestination.adresse.label"  /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="adresse"/></dd>
						
					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDestination?.codePostal}">
						<dt><g:message code="utilisateur.adresseDestination.codepostal.label"  /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="codePostal"/></dd>

					</g:if>
				
					<g:if test="${utilisateurInstance?.adresseDestination?.ville}">
						<dt><g:message code="utilisateur.adresseDestination.ville.label" /></dt>
						
							<dd><g:fieldValue bean="${utilisateurInstance.adresseDestination}" field="ville"/></dd>
						
					</g:if>
				
					<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
						<dt><g:message code="utilisateur.accountExpired.label" default="Account Expired" /></dt>
						
							<dd><g:formatBoolean boolean="${utilisateurInstance?.accountExpired}" /></dd>
					
						<dt><g:message code="utilisateur.accountLocked.label" default="Account Locked" /></dt>
						
							<dd><g:formatBoolean boolean="${utilisateurInstance?.accountLocked}" /></dd>
						
				
						<dt><g:message code="utilisateur.enabled.label" default="Enabled" /></dt>
						
							<dd><g:formatBoolean boolean="${utilisateurInstance?.enabled}" /></dd>
						
				
						<dt><g:message code="utilisateur.passwordExpired.label" default="Password Expired" /></dt>
						
							<dd><g:formatBoolean boolean="${utilisateurInstance?.passwordExpired}" /></dd>
							
					</sec:ifAllGranted>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${utilisateurInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>
				
			</div>
			
			<div class="span2">
			</div>

		</div>
	</body>
</html>
