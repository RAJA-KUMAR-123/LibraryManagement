<%@page import="com.training.hibernateservlet.beans.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.training.hibernateservlet.model.HibernateManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authorise User</title>
</head>
<body>
<%
	HibernateManager hm = new HibernateManager();
    ArrayList<User> allUser = hm.readAllUser();
    %>



	<%

    for (User curSub : allUser) { %>

	<h1>
		User ID:
		<%=curSub.getUid()%></h1>

	<h1>
		User Name:
		<%=curSub.getUname()%></h1>

	<h1>
		Address:
		<%=curSub.getAddress()%></h1>
	<h1>
		Phone
		<%=curSub.getPhone()%></h1>
	<h1>
		Email:
		<%=curSub.getEmail()%></h1>
	<h1>
		Status:
		<%=curSub.getStatus()%></h1>


	<%

    }

    %>

<form action="authorizeuser" method="post">
		<label>Enter the user id you want to authorize</label> <input
			type="text" name="uid"><br>
		<br> <input type="submit">
	</form>
</body>
</html>