<%@ page import="fr.sigway.ref.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="utilisateur.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${utilisateurInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${utilisateurInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		
	</label>
	<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'adresseDomicile', 'error')} ">
	<label for="adresseDomicile">
		<g:message code="utilisateur.adresseDomicile.label" default="Adresse Domicile" />
		
	</label>
	<g:textField name="adresseDomicile" value="${utilisateurInstance?.adresseDomicile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'codePostalDomicile', 'error')} ">
	<label for="codePostalDomicile">
		<g:message code="utilisateur.codePostalDomicile.label" default="Code Postal Domicile" />
		
	</label>
	<g:field type="number" name="codePostalDomicile" value="${fieldValue(bean: utilisateurInstance, field: 'codePostalDomicile')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'villeDomicile', 'error')} ">
	<label for="villeDomicile">
		<g:message code="utilisateur.villeDomicile.label" default="Ville Domicile" />
		
	</label>
	<g:textField name="villeDomicile" value="${utilisateurInstance?.villeDomicile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'adresseDestination', 'error')} ">
	<label for="adresseDestination">
		<g:message code="utilisateur.adresseDestination.label" default="Adresse Destination" />
		
	</label>
	<g:textField name="adresseDestination" value="${utilisateurInstance?.adresseDestination}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'codePostalDestination', 'error')} ">
	<label for="codePostalDestination">
		<g:message code="utilisateur.codePostalDestination.label" default="Code Postal Destination" />
		
	</label>
	<g:field type="number" name="codePostalDestination" value="${fieldValue(bean: utilisateurInstance, field: 'codePostalDestination')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'villeDestination', 'error')} ">
	<label for="villeDestination">
		<g:message code="utilisateur.villeDestination.label" default="Ville Destination" />
		
	</label>
	<g:textField name="villeDestination" value="${utilisateurInstance?.villeDestination}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="utilisateur.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${utilisateurInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="utilisateur.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${utilisateurInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="utilisateur.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${utilisateurInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="utilisateur.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${utilisateurInstance?.passwordExpired}" />
</div>

