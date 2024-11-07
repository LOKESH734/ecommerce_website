<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Payment</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Payment Confirmation</h1>
    <%
        String productId = request.getParameter("product_id");
        String productName = request.getParameter("name");
        String productPriceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");

        double productPrice = Double.parseDouble(productPriceStr);
        int quantity = Integer.parseInt(quantityStr);
        double totalAmount = productPrice * quantity;

        // Here you would handle the actual payment logic
    %>
    <p>Product: <%= productName %></p>
    <p>Price: ₹<%= productPrice %></p>
    <p>Quantity: <%= quantity %></p>
    <p>Total Amount: ₹<%= totalAmount %></p>
    <p>Thank you for your purchase!</p>
    <a href="index.jsp">Return to Home</a>
</body>
</html>
