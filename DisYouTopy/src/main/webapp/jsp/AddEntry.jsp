<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page
	import="disyoutopy.IForumDatabase,disyoutopy.ForumDatabase, disyoutopy.ForumEntry"%>


<%

IForumDatabase forumDatabase = ForumDatabase.getIForumDatabase();

// Read Input	
String userID = request.getParameter("userID");
String thought = request.getParameter("thought");

if (userID != null && userID.length() != 0 && thought != null && thought.length() != 0) {
	
	
	List<String> replies = new ArrayList<String>(); 
	
	// Add Entry
	ForumEntry entry = new ForumEntry(userID,thought,replies);
	forumDatabase.addEntry(entry);
}  %>

<jsp:include page="DYTforumMIG.jsp" />
