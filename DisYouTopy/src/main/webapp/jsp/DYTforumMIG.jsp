<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="disyoutopy.IForumDatabase"%>
<%@page import="disyoutopy.ForumDatabase"%>
<%@page import="disyoutopy.ForumEntry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%
// Read Username
String username = (String) session.getAttribute("username");

 %>

<link
	href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" rel="noopener"
	href="../css/DYT_forum_MIG.css">


<title>Madly in Glove</title>
</head>
<body>

	<header class="main-header">
		<div class="logoTitle">
			<% if (username == null){%>
				<a href="../index.jsp">DisYouTopy</a>
				<% }else{ %>
				<a href="DisYouTopyProfile.jsp">DisYouTopy</a>
			<% } %>
		</div>
		<div class="forumSubTitle">Forums. Madly in Glove.</div>
	</header>



	<div id="forumIntro">
		<p>Ask a question, share an idea, debate existence.</p>
	</div>





	<table id="forumEntries">
		<tr>
			<th style="width: 10%">Guest ID</th>
			<th style="width: 20%">Post</th>
			<th>Replies</th>
		</tr>

		<%IForumDatabase forumDatabase = ForumDatabase.getIForumDatabase(); 
	
				List<ForumEntry> forumEntries = forumDatabase.getForumEntries();
		
				Collections.reverse(forumEntries);
				
				for(ForumEntry e: forumEntries)
				{
					
			%>

		<tr>
			<td><%=e.getUserID()%></td>
			<td><%=e.getQuestion()%></td>
			
			<!-- Table for Answers within Forum Table -->
			<td>
			
			<table class="answer">
				
					<% for (String answer: e.getAnswers())
					{
						%>   <tr><td class="answer"><%=answer%> </td>
							
							
						<% 
					}		
					%><td class="addAnswer" rowspan=<%=e.getAnswers().size() %>>Add Answer</td></tr> 
				
			</table>
						
			</td>
			
		</tr>
		<%
			}
				
		Collections.reverse(forumEntries);
		%>

	</table>
	<br>

	<div id="forumPost">

		<form action="AddEntry.jsp" method="post">
			<div style="float: left">
				<input id="userID" name="userID" placeholder="Your Name">
			</div>
			<div style="float: left">
				<input id="thought" name="thought"
					placeholder="Share your thoughts...">
			</div>
			<div style="float: left">
				<input class="button" type="submit" value="Post" />
			</div>

		</form>
	</div>






</body>
</html>