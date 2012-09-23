<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<sec:ifLoggedIn>
			<div role="navigation">
				<ul class="nav nav-tabs">
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</sec:ifLoggedIn>
		<div id="create-utilisateur" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${utilisateurInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${utilisateurInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<form class="form-horizontal" action="save" >
				<div class="control-group">
					<g:render template="form"/>
				</div>
				<div class="control-group">
					<div class="controls">
						<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</div>
				</div>
			</form>
			
		</div>
	</body>
</html>
