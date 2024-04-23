<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%-- 
	<form action="saveuser" method="post">
		FirstName : <input type="text" name="firstName" />
		${result.getFieldErrors("firstName").get(0).getDefaultMessage()} <Br>
		<Br> Email : <input type="text" name="email" /><br>
		<BR> Password : <input type="password" name="password" /><br>
		<Br> <input type="submit" value="Signup" />
	</form> --%>
	
	<s:form modelAttribute="user" action="saveuser" method="post">
		FirstName : <s:input path="firstName"/>
		<s:errors path="firstName"></s:errors>
		<br><Br> 
		Email : <s:input path="email"/>
			<s:errors path="email"></s:errors>
		<br><Br> 
		Password : <s:password path="password"/>

	<s:errors path="password"></s:errors>		<br><br>
		<input type="submit" value="Signup" />
	</s:form>
	
</body>
</html>