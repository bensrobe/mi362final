<%--
  Created by IntelliJ IDEA.
  User: robertbens556
  Date: 4/24/16
  Time: 12:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<h1>Contacts</h1>

<g:if test="${people.empty}">
    <p>There are no people in the directory</p>
</g:if>
<g:else>
    <table>
        <g:each var="p" in="${people}">
        <tr>
            <td><g:link action="show" params="['pID':p.id]">${p.lastName}, ${p.firstName}</g:link></td>
        </tr>
        </g:each>
    </table>
</g:else>

<p><g:link action="createContactForm">Create new contact</g:link></p>


</body>
</html>