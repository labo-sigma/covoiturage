
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
<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="accueil.title"/></title>
	
</head>

<body>
<div id='accueil'>
	<div class='inner'>
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>	
		<g:form id='accueilForm' class='cssform' autocomplete='off'  url="[action:'rechercherCorrespondanceCodePostal',controller:'accueil']" >
			<p>
				<label ><g:message code="accueil.codePostal"/>:</label>
				<g:field type="number" min="1" max="99999" required="" name="codePostal" value="${codePostal}"/>
				<input type='submit' id="submit" value='${message(code: "default.button.search")}' />
				
			</p>			
			<g:if test="${correspondances}">
				<p>${correspondances + " "}<g:message code="accueil.correspondances"/></p> 
				<p><g:link controller="accueil" action="creerCompte" ><g:message code="accueil.creercompte"/></g:link></p>
			</g:if>
							
		</g:form>
	</div>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['accueilForm'].elements['codePostal'].focus();
	})();
	// -->
</script>
</body>
</html>
