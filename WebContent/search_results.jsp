<?xml version="1.0" encoding="US-ASCII" ?>
<%@page import="testPackage.DatabaseMethods"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/load_header.js"></script>
<title>Search Results</title>
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="dbObjects.*"%>
	<div id="header"></div>
	<h2 class="text-center">Search Results</h2>
	<%
		DatabaseMethods db = new DatabaseMethods();
		HashSet<Report> resultSet = db.searchReports(request.getParameter("search_query"));
	%>
	<ul class="text-center">
	<%
		for (Report r : resultSet) {
	%>
			<li><a href="view_report?report_id=<%=r.get_id()%>"><%=r.getTitle()%></a></li>
		<% } %>
	</ul>
</body>
</html>