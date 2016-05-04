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

<div class="container" style="font-size: 20px;">
    <table width="20%" style="float:left">
        <tr><td>First Name:</td></tr>
        <tr><td>Last Name:</td></tr>
        <tr><td>Phone Number:</td></tr>
        <tr><td>Email Address:</td></tr>
        <tr><td>Home Address:</td></tr>
        <tr><td>City:</td></tr>
        <tr><td>State:</td></tr>
        <tr><td>Zip Code:</td></tr>
    </table>

    <table width="30%">
        <tr><td>${p.firstName}</td></tr>
        <tr><td>${p.lastName}</td></tr>
        <tr><td>${p.phone}</td></tr>
        <tr><td>${p.email}</td></tr>
        <tr><td>${p.address}</td></tr>
        <tr><td>${p.city}</td></tr>
        <tr><td>${p.state}</td></tr>
        <tr><td>${p.zipcode}</td></tr>
    </table>

    <p></br><g:link action="edit" params="['pID':p.id]">Edit Contact</g:link></p>

    <p><g:link action="delete" params="['pID':p.id]">Delete Contact</g:link></p>

    <p><g:link action="index">Back to the list of contacts</g:link></p>
</div>

</body>
</html>