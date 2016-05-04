<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>

        <g:layoutHead/>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron" style="margin-bottom: 0px;">
                <h1>Address Book</h1>
                <p>A cloud-based heroku app that acts as a place to manage all of your friend's contact information. Powered by Grails 3.</p>
            </div>

            <nav class="navbar navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="/people/index.gsp">Home</a>
                            </li>
                            <li>
                                <a href="/people/createContactForm.gsp">Create New Contact</a>
                            </li>
                        </ul>
                    </div>
                    <p style="margin-right: 40px;" class="navbar-text navbar-right">Created by Robert Bens</p>
                </div>
            </nav>
        </div>
        <%--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>--%>
        <g:layoutBody/>
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>
