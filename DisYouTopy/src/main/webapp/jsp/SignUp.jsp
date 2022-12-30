<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page
	import="disyoutopy.IDisYouserDatabase,disyoutopy.DisYouserDatabase, disyoutopy.DisYouser"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv='refresh' content='5;URL=index.jsp'>



<%
IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();

// Read Input	
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String street = request.getParameter("street");
String city = request.getParameter("city");
String postalCode = request.getParameter("postalCode");
String email = request.getParameter("email");
String birthDate = request.getParameter("birthDate");
String username = request.getParameter("username");
String password = request.getParameter("password");
 %>



<title>Sign Up Successful</title>
</head>
<body>

	<a><b>Welcome <%=firstName + " " + lastName%>!!!!
	</b></a>
	<br>

	<a><b>You'll be shortly forwarded to our homepage, where you
			can sign in!</b></a>

</body>
</html>