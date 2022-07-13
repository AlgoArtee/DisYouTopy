<%@page import="disyoutopy.IForumDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">

<link rel="stylesheet" type="text/css" rel="noopener" href="../css/DYT_forum_MIG.css">


<title>Insert title here</title>
</head>
<body>

	<header class="main-header">
		<div class="logoTitle">
			<a href="../index.html">DisYouTopy</a>
		</div>
		<div class="forumSubTitle">
		
			Forums. Madly in Glove.
		
		
		</div>
	</header>



	<h2>Ask a question, share an idea, troll existence. </h2>
	    
	    <table>
			<tr>
				<th>User ID</th>
				<th>Dilemma</th>
				<th>Answers</th>
			</tr>
			
			<%IForumDatabase forumDatabase = IForumDatabase.getForumEntries(); 
				
				for(ForumEntry e: forumDatabase.getEntries())
				{
					
			%>
					
					<tr>
					<td>
						<%=e.getUserID()%>
					</td>
					<td>
						<%=e.getQuestion()%>
					</td>
					<td>
						<%=e.getAnswers()%>
					</td>
					</tr>
			<%
				}
			%>
			
			</table>
        	<br>



</body>
</html>