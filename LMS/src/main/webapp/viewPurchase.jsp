<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.training.hibernateservlet.beans.*, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Purchase</title>
</head>
<body>
	<%
	ArrayList<PurchaseHistory> allpurchases = PurchaseHistory.getAllPurchaseHistroy();
	%>
	<%
	for (PurchaseHistory curpurchase : allpurchases) {
	%>

	<h1>
		Purchase ID:
		<%=curpurchase.getPid()%></h1>
	<h1>
		Book ID:
		<%=curpurchase.getBid()%></h1>
	<h1>
		Book Name:
		<%=curpurchase.getBname()%>
	</h1>
	<h1>
		User ID:
		<%=curpurchase.getUid()%>
	</h1>
	<h1>
		Amount:
		<%=curpurchase.getAmount()%>
	</h1>
	<h1>
		Invoice Number:
		<%=curpurchase.getInvoice_no()%>
	</h1>
	<%
	}
	%>

</body>
</html>