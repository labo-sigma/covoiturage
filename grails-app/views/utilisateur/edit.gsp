<%@ page import="fr.sigway.ref.Utilisateur" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
		<div id="edit-utilisateur" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			
			<form class="form-horizontal" method="post" >
				<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
				<g:hiddenField name="version" value="${utilisateurInstance?.version}" />
				<div class="control-group">
					<g:render template="form"/>
				</div>
				<div class="control-group">
					<div class="controls">
						<g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
						<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</div>
			</form>
			
		</div>
	</body>
</html>
