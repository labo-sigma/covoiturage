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
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
			<ul class="nav nav-tabs">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-utilisateur" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'utilisateur.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'utilisateur.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'utilisateur.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="prenom" title="${message(code: 'utilisateur.prenom.label', default: 'Prenom')}" />
					
						<th><g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" /></th>
					
						<th><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utilisateurInstanceList}" status="i" var="utilisateurInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${utilisateurInstance.id}">${fieldValue(bean: utilisateurInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "prenom")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "adresseDomicile")}</td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "adresseDestination")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination pagination-centered">
				<g:paginate total="${utilisateurInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
