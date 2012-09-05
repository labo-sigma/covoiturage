
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
	<g:if test='${flash.message}'>
		    <div class="alert">
   				<button type="button" class="close" data-dismiss="alert">×</button>
   				<strong>Warning!</strong> ${flash.message}
   			</div>
	</g:if>	

      <div class="hero-unit">
        <h2><g:message code="accueil.accroche.titre" /></h2>
        <p><g:message code="accueil.accroche.contenu"/></p>
        <p>
	        <g:form id='accueilForm' class='cssform' autocomplete='off'  url="[action:'rechercherCorrespondanceCodePostal',controller:'accueil']" >
				<p>
					<label ><g:message code="accueil.codePostal"/>:</label>
					<g:field type="number" min="1" max="99999" required="" name="codePostal" value="${codePostal}"/>
					<p><input type='submit' id="submit" value='${message(code: "default.button.search")}' class="btn btn-primary btn-large"/></p>
				</p>			
				<g:if test="${correspondances}">
					<p>${correspondances + " "}<g:message code="accueil.correspondances"/></p> 
					<p><g:link controller="accueil" action="creerCompte" ><g:message code="accueil.creercompte"/></g:link></p>
				</g:if>
								
			</g:form>
        </p>
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
