
<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" /></a>
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
			
				<g:if test="${utilisateurInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="utilisateur.email.label"  /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${utilisateurInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="utilisateur.password.label"  /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${utilisateurInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="utilisateur.nom.label" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${utilisateurInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="utilisateur.prenom.label"  /></span>
					
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
					<span id="accountExpired-label" class="property-label"><g:message code="utilisateur.accountExpired.label"  /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${utilisateurInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="utilisateur.accountLocked.label"  /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${utilisateurInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="utilisateur.enabled.label"  /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${utilisateurInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="utilisateur.passwordExpired.label" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${utilisateurInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
					<g:link class="edit" action="edit" id="${utilisateurInstance?.id}"><g:message code="default.button.edit.label"  /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
