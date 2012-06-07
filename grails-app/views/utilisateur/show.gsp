
<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-utilisateur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utilisateur">
			
				<g:if test="${utilisateurInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="utilisateur.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${utilisateurInstance}" field="username"/></span>
					
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
					
						<span class="property-value" aria-labelledby="adresseDomicile-label"><g:fieldValue bean="${utilisateurInstance}" field="adresseDomicile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.codePostalDomicile}">
				<li class="fieldcontain">
					<span id="codePostalDomicile-label" class="property-label"><g:message code="utilisateur.codePostalDomicile.label" default="Code Postal Domicile" /></span>
					
						<span class="property-value" aria-labelledby="codePostalDomicile-label"><g:fieldValue bean="${utilisateurInstance}" field="codePostalDomicile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.villeDomicile}">
				<li class="fieldcontain">
					<span id="villeDomicile-label" class="property-label"><g:message code="utilisateur.villeDomicile.label" default="Ville Domicile" /></span>
					
						<span class="property-value" aria-labelledby="villeDomicile-label"><g:fieldValue bean="${utilisateurInstance}" field="villeDomicile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.adresseDestination}">
				<li class="fieldcontain">
					<span id="adresseDestination-label" class="property-label"><g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" /></span>
					
						<span class="property-value" aria-labelledby="adresseDestination-label"><g:fieldValue bean="${utilisateurInstance}" field="adresseDestination"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.codePostalDestination}">
				<li class="fieldcontain">
					<span id="codePostalDestination-label" class="property-label"><g:message code="utilisateur.codePostalDestination.label" default="Code Postal Destination" /></span>
					
						<span class="property-value" aria-labelledby="codePostalDestination-label"><g:fieldValue bean="${utilisateurInstance}" field="codePostalDestination"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.villeDestination}">
				<li class="fieldcontain">
					<span id="villeDestination-label" class="property-label"><g:message code="utilisateur.villeDestination.label" default="Ville Destination" /></span>
					
						<span class="property-value" aria-labelledby="villeDestination-label"><g:fieldValue bean="${utilisateurInstance}" field="villeDestination"/></span>
					
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
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
					<g:link class="edit" action="edit" id="${utilisateurInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
