<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<% 
//Read Username
String username = (String) session.getAttribute("username");

if (username == null){%>
<meta http-equiv='refresh' content='6;URL=../index.jsp'>
<% }else{ %>
<meta http-equiv='refresh' content='6;URL=DisYouTopyProfile.jsp'>
<% } %>




<title>In Construction</title>

<!-- CSS section -->

<link rel="stylesheet" type="text/css" rel="noopener"
	href="../css/dna.css">

</head>
<body>
	<div class="dots">
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
		<div class="dots__dot"></div>
	</div>

	<div id="inConstruction">In Construction!</div>

</body>
</html>