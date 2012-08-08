<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="accueil.title"/></title>
	
</head>

<body>
<div id='accueil'>
	<div class='inner'>
		<form id='accueilForm' class='cssform' autocomplete='off'>
			<p>
				<label ><g:message code="accueil.codePostal"/>:</label>
				<input type='text'  id='codePostal'/>
				<input type='submit' id="submit" value='${message(code: "default.button.search")}'/>
			</p>
		</form>
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
