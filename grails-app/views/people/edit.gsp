<%--
  Created by IntelliJ IDEA.
  User: robertbens556
  Date: 4/24/16
  Time: 1:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<div class="container">
    <g:hasErrors bean="${p}">
        <ul>
            <g:eachError var="err" bean="${p}">
                <li><g:message error="${err}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <table width="20%" style="float:left; font-size: 18px;">
        <tr><td>First Name:</td></tr>
        <tr><td>Last Name:</td></tr>
        <tr><td>Phone Number:</td></tr>
        <tr><td>Email Address:</td></tr>
        <tr><td>Home Address:</td></tr>
        <tr><td>City:</td></tr>
        <tr><td>State:</td></tr>
        <tr><td>Zip Code:</td></tr>
    </table>

    <table width="10%">
        <g:form action="editConfirm">
            <g:hiddenField name="pID" value="${p.id}"/>
            <tr><td><g:textField name="firstName" value="${p.firstName}"/></td></tr>
            <tr><td><g:textField name="lastName" value="${p.lastName}"/></td></tr>
            <tr><td><g:textField name="phone" value="${p.phone}"/></td></tr>
            <tr><td><g:textField name="email" value="${p.email}"/></td></tr>
            <tr><td><g:textField name="address" value="${p.address}"/></td></tr>
            <tr><td><g:textField name="city" value="${p.city}"/></td></tr>
            <tr><td><g:select name="state" value="${p.state}" from="${stateList}"/></td></tr>
            <tr><td><g:textField name="zipcode" value="${p.zipcode}"/></td></tr>
            <tr><td><br><g:submitButton name="Confirm Changes"/></td></tr>
        </g:form>
    </table>
</div>

</body>
</html>