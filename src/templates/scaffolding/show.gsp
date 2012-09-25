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
<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span2">
				<sec:ifAnyGranted roles="ROLE_PROFIL_COVOITUREUR,ROLE_PROFIL_ADMIN">
					<div class="well">
						<ul class="nav nav-list">
							<li class="nav-header">\${entityName}</li>
							<sec:ifAllGranted roles="ROLE_PROFIL_ADMIN">
								<li>
									<g:link class="list" action="list">
										<i class="icon-list"></i>
										<g:message code="default.list.label" args="[entityName]" />
									</g:link>
								</li>
								<li>
									<g:link class="create" action="create">
										<i class="icon-plus"></i>
										<g:message code="default.create.label" args="[entityName]" />
									</g:link>
								</li>
							</sec:ifAllGranted>
							<li class="active">
								<g:link class="edit" action="edit" id="\${${propertyName}?.id}">
									<i class="icon-edit"></i>
									<g:message code="default.edit.label" args="[entityName]" />
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
				</sec:ifAnyGranted>
			</div>
			
			<div class="span8">

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="\${flash.message}">
				<bootstrap:alert class="alert-info">\${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
					allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
					props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
					Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
					props.each { p -> %>
					<g:if test="\${${propertyName}?.${p.name}}">
						<dt><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></dt>
						<%  if (p.isEnum()) { %>
							<dd><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></dd>
						<%  } else if (p.oneToMany || p.manyToMany) { %>
							<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
							<dd><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></dd>
							</g:each>
						<%  } else if (p.manyToOne || p.oneToOne) { %>
							<dd><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></dd>
						<%  } else if (p.type == Boolean || p.type == boolean) { %>
							<dd><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></dd>
						<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
							<dd><g:formatDate date="\${${propertyName}?.${p.name}}" /></dd>
						<%  } else if(!p.type.isArray()) { %>
							<dd><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></dd>
						<%  } %>
					</g:if>
				<%  } %>
				</dl>

				<g:form>
					<g:hiddenField name="id" value="\${${propertyName}?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="\${${propertyName}?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>
				
			</div>
			
			<div class="span2">
			</div>

		</div>
	</body>
</html>
