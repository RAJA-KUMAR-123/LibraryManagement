<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.training.hibernateservlet.beans.*, java.util.ArrayList"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Users</title>
</head>
<body>
	<%
    ArrayList<User> allusers = User.getAllUsers();
    %>
    <%

    for (User curuser : allusers) { %>

        <h1>User ID: <%=curuser.getUid()%></h1>
        <h1>User Name: <%=curuser.getUname() %></h1>
        <h1>Password: <%=curuser.getPwd() %> </h1>
        <h1>Address: <%=curuser.getAddress() %> </h1>
        <h1>Phone: <%=curuser.getPhone() %> </h1>
        <h1>Email: <%=curuser.getEmail() %> </h1>
        <h1>Status: <%=curuser.getStatus() %> </h1>
    <%

    }

    %>
    
    <form action="RemoveUser" method="post">
		<label>User ID</label>
		<input type="text" name="uid"><br><br>
		<input type="submit" value="Register">
	</form>

</body>
</html>