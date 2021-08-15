<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>Company home page</title>
</head>

<body>

<h2>Company Home Page</h2>

<hr>

<p>Welcome to my company's home page</p>

<hr>
User: <security:authentication property="principal.username"/>

Roles: <security:authentication property="principal.authorities"/>
<hr>

<p>

<form:form action="${pageContext.request.contextPath}/logout" method="POST">

<input type="submit" value="LOGOUT">

</form:form>

</p>

<hr>

<security:authorize access = "hasRole('MANAGER')">
<p> <a href = "${pageContext.request.contextPath}/leaders">Leeadership Meeting</a> only for managers </p> 
</security:authorize>

<security:authorize access = "hasRole('ADMIN')">
<p> <a href = "${pageContext.request.contextPath}/systems">IT Meeting</a> only for admins </p> 
</security:authorize>
</body>

</html>