<!-- Sigway - covoiturage
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
 along with this program.  If not, see <http://www.gnu.org/licenses/> -->
 
 <%=packageName%>
<!doctype html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span2">
				<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
					<div class="well">
						<ul class="nav nav-list">
							<li class="nav-header">${entityName}</li>
							<li>
								<g:link class="list" action="list">
									<i class="icon-list"></i>
									<g:message code="default.list.label" args="[entityName]" />
								</g:link>
							</li>
							<li class="active">
								<g:link class="create" action="create">
									<i class="icon-plus icon-white"></i>
									<g:message code="default.create.label" args="[entityName]" />
								</g:link>
							</li>
							<li>
								<g:link controller="logout" action="index" >
									<i class="icon-off"></i>
									<g:message code="accueil.deconnexion"/>
								</g:link>
							</li>
						</ul>
					</div>
				</sec:ifAllGranted>
			</div>
			
			<div class="span8">

				<div class="page-header">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>
				</div>

				<g:if test="\${flash.message}">
					<bootstrap:alert class="alert-info">\${flash.message}</bootstrap:alert>
				</g:if>
				
				<g:hasErrors bean="\${${propertyName}}">
					<bootstrap:alert class="alert-error">
					<ul>
						<g:eachError bean="\${${propertyName}}" var="error">
						<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
						</g:eachError>
					</ul>
					</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
						<fieldset>
							<g:render template="form" contextPath="/${className}" />
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">
									<i class="icon-ok icon-white"></i>
									<g:message code="default.button.create.label" default="Create" />
								</button>
							</div>
						</fieldset>
					</g:form>
				</fieldset>
				
			</div>
			
			<div class="span2">
			</div>

		</div>
	</body>
</html>
