
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
			<div class="message" role="status">${flash.message}</div>
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
			
				<g:if test="${utilisateurInstance?.adresseDomicile}">
				<li class="fieldcontain">
					<span id="adresseDomicile-label" class="property-label"><g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" /></span>
					
						<span class="property-value" aria-labelledby="adresseDomicile-label"><g:link controller="adresse" action="show" id="${utilisateurInstance?.adresseDomicile?.id}">${utilisateurInstance?.adresseDomicile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDestination}">
				<li class="fieldcontain">
					<span id="adresseDestination-label" class="property-label"><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /></span>
					
						<span class="property-value" aria-labelledby="adresseDestination-label"><g:link controller="adresse" action="show" id="${utilisateurInstance?.adresseDestination?.id}">${utilisateurInstance?.adresseDestination?.encodeAsHTML()}</g:link></span>
					
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
			
			<form class="form-horizontal">
				<div class="control-group">
					<div class="controls">
						<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
						<g:link class="btn btn-warning" action="edit" id="${utilisateurInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</form>
			
		</div>
	</body>
</html>
