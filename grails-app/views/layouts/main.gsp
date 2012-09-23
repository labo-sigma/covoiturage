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
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Covoiturage"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<r:require modules="bootstrap"/>
		<style type="text/css">
			body {
			  padding-top: 60px;
			  padding-bottom: 40px;
			}
			.sidebar-nav {
			  padding: 9px 0;
			}
	    </style>
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
	
	<%--	BARRE DE NAVIGATION  --%>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="${createLink(uri: '/')}"><g:message code="accueil.title"/></a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="${createLink(uri: '/')}"><g:message code="menu.accueil" /></a></li>
              <li><a href="${createLink(uri: '/contact')}"><g:message code="menu.aPropos" /></a></li>
              <li><a href="${createLink(uri: '/aPropos')}"><g:message code="menu.contact" /></a></li>
              <sec:ifLoggedIn>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><g:message code="menu.compte"/><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><g:link controller="utilisateur" action="modifierCompte" id="${SecurityContextHolder.getContext().getAuthentication().getName()}"><g:message code="menu.compte.modifier"/></g:link></li>
                  <li><g:link controller="logout" action="index" ><g:message code="accueil.deconnexion"/></g:link></li>
                </ul>
              </li>
              </sec:ifLoggedIn>
            </ul>
            <sec:ifNotLoggedIn>
	            <form action='${g.createLink(controller:'j_spring_security_check')}' class="navbar-form pull-right" method='POST' id='loginForm'>
	            	<input class="span2" type="text" placeholder="${g.message(code:"springSecurity.login.username.label") }" name="j_username">
	            	<input class="span2" type="password" placeholder="${g.message(code:"springSecurity.login.password.label") }" name='j_password'>
	            	<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="btn"/>
	        	</form>
            </sec:ifNotLoggedIn>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    
	<%--    CONTAINEUR GRIS CENTRALE  --%>
    <div class="container-fluid">
      <div class="row-fluid">
      
        <div class="span1">
			<%--   SPAN POUR CENTRER L'ELEMENT GRIS CENTRALE  --%>
        </div><!--/span-->
        
        <div class="span10">
			<g:layoutBody/>
			<g:javascript library="application"/>
        	<r:layoutResources />
        </div><!--/span-->
        
        <div class="span1">
			<%--   SPAN POUR CENTRER L'ELEMENT GRIS CENTRALE  --%>
        </div><!--/span-->
        
      </div><!--/row-->

      <hr>
      
		<%--  FOOTER  --%>
		<footer>
			<p>&copy; Company 2012</p>
		</footer>
    </div>
	</body>
</html>