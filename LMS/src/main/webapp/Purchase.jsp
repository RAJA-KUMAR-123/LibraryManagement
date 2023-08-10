<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="com.training.hibernateservlet.beans.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    ArrayList<Book> allBook = Book.getAllBook();

    %>
    <%

    for (Book curBook : allBook) { %>

        <h3>Book ID: <%=curBook.getBid()%></h3>
        <h3>Book Name: <%=curBook.getBname()%></h3>
        <h3>Book Author: <%=curBook.getAuthor()%></h3>
        <h3>Book Cost: <%=curBook.getCost()%></h3>
        <h3>Book Category: <%=curBook.getCategory()%></h3>
		<h3>Book Status: <%=curBook.getStatus()%></h3>
    <%

    }

    %>
    <form action="AddPurchase" method="post">
	<label>Book ID</label>
	<input type="text" name="bid"><br><br>
	<label>Book Name</label>
	<input type="text" name="bname"><br><br>
	<label>Book Amount</label>
	<input type="text" name="amount"><br><br>
	<input type="submit" value="Add Book">
</form>
    
</body>
</html>