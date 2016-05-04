<%--
  Created by IntelliJ IDEA.
  User: robertbens556
  Date: 4/24/16
  Time: 1:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:hasErrors bean="${p}">
    <ul>
        <g:eachError var="err" bean="${p}">
            <li><g:message error="${err}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<g:form action="create">
    <p>First Name: <g:textField name="firstName"/></p>
    <p>Last Name: <g:textField name="lastName"/></p>
    <p>Phone Number: <g:textField name="phone"/></p>
    <p>Email Address: <g:textField name="email"/></p>
    <p>Home Address: <g:textField name="address"/></p>
    <p>City: <g:textField name="city"/></p>
    <p>State: <g:select name="state" from="${stateList}"/></p>
    <p>Zip Code: <g:textField name="zipcode"/></p>
    <g:submitButton name="Submit"/>
</g:form>

</body>
</html>