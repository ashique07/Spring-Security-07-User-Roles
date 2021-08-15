<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<title>My login page</title>
<style>

.error{
color: red;
font-size: 10px;
font-family: sans-serif; 
}

</style>
</head>

<body>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

<c:if test="${param.error != null}">
<i class="error">Wrong username/password</i>
</c:if>

<p>
Username: <input type="text" name="username"/>
</p>

<p>
Password: <input type="password" name="password"/>
</p>

<input type="submit" value="LOGIN"/>

</form:form>

</body>

</html>