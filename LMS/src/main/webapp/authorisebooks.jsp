<%@page import="com.training.hibernateservlet.beans.Book"%>
<%@page import="com.training.hibernateservlet.model.HibernateManager"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	HibernateManager hm = new HibernateManager();
    ArrayList<Book> allBooks = HibernateManager.readAllBook();
    %>



	<%

    for (Book curSub : allBooks) { %>

	<h1>
		Book ID:
		<%=curSub.getBid()%></h1>

	<h1>
		Book Name:
		<%=curSub.getBname()%></h1>

	<h1>
		Author:
		<%=curSub.getAuthor()%></h1>
	<h1>
		Cost
		<%=curSub.getCost()%></h1>
	<h1>
		Category:
		<%=curSub.getCategory()%></h1>
	<h1>
		Status:
		<%=curSub.getStatus()%></h1>


	<%

    }

    %>
    
<form action="authorizebooks" method="post">

 

    <label>Enter the book id you want to authorize</label>

 

    <input type="text" name="bid"><br><br>

 

    <input type="submit">

 

    

 

    

 

</form>
    
</body>
</html>