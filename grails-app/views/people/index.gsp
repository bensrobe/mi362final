<%--
  Created by IntelliJ IDEA.
  User: robertbens556
  Date: 4/24/16
  Time: 12:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<div class="container" style="margin-bottom: 2em;">
    <div class="col-md-6">
        <h1>Contact List</h1>
    </div>
    <div class="col-md-6">
        <h1 style="text-align: right;"><g:link action="createContactForm">Create new contact</g:link></h1>
    </div>
</div>
<div class="container">
    <g:if test="${people.empty}">
        <p>There are no people in the directory</p>
    </g:if>
    <g:else>
        <table>
            <g:each var="p" in="${people}">
            <tr>
                <td style="font-size: 20px;"><g:link action="show" params="['pID':p.id]">${p.lastName}, ${p.firstName}</g:link></td>
            </tr>
            </g:each>
        </table>
    </g:else>
</div>

</body>
</html>