<%@ page import="fr.sigway.ref.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="utilisateur.email.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${utilisateurInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.password.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${utilisateurInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="utilisateur.nom.label"  />
		
	</label>
	<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label"  />
		
	</label>
	<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
</div>
<div title="Domicile" >
	
	<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'adresse', 'error')} ">
		<label for="adresseDomicile.adresse">
			<g:message code="utilisateur.adresseDomicile.adresse.label"  />
			
		</label>
		<g:textField name="adresseDomicile.adresse" value="${utilisateurInstance?.adresseDomicile?.adresse}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'codePostal', 'error')} required ">
		<label for="adresseDomicile.codePostal">
			<g:message code="utilisateur.adresseDomicile.codepostal.label"  />
			<span class="required-indicator">*</span>
		</label>
		<g:field min="1" max="99999" type="number"  required="" name="adresseDomicile.codePostal" value="${utilisateurInstance.adresseDomicile?.codePostal}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDomicile, field: 'ville', 'error')} ">
		<label for="adresseDomicile.ville">
			<g:message code="utilisateur.adresseDomicile.ville.label" />
			
		</label>
		<g:textField name="adresseDomicile.ville" value="${utilisateurInstance?.adresseDomicile?.ville}"/>
	</div>
	
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'adresse', 'error')} ">
	<label for="adresseDestination.adresse">
		<g:message code="utilisateur.adresseDestination.adresse.label"  />
		
	</label>
	<g:textField name="adresseDestination.adresse" value="${utilisateurInstance?.adresseDestination?.adresse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'codePostal', 'error')} required">
	<label for="adresseDestination.codePostal">
		<g:message code="utilisateur.adresseDestination.codepostal.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" min="1" max="99999" required="" name="adresseDestination.codePostal" value="${utilisateurInstance.adresseDestination?.codePostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance.adresseDestination, field: 'ville', 'error')} ">
	<label for="adresseDestination.Ville">
		<g:message code="utilisateur.adresseDestination.ville.label"  />
		
	</label>
	<g:textField name="adresseDestination.ville" value="${utilisateurInstance?.adresseDestination?.ville}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="utilisateur.accountExpired.label"  />
		
	</label>
	<g:checkBox name="accountExpired" value="${utilisateurInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="utilisateur.accountLocked.label"  />
		
	</label>
	<g:checkBox name="accountLocked" value="${utilisateurInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="utilisateur.enabled.label" />
		
	</label>
	<g:checkBox name="enabled" value="${utilisateurInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="utilisateur.passwordExpired.label"  />
		
	</label>
	<g:checkBox name="passwordExpired" value="${utilisateurInstance?.passwordExpired}" />
</div>

