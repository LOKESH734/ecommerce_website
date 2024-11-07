<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Order Confirmation</h1>
    <%
        String productId = request.getParameter("product_id");
        String productName = request.getParameter("name");
        String totalPrice = request.getParameter("total_price");
        String cardNumber = request.getParameter("card_number");
        String expiryDate = request.getParameter("expiry_date");
        String cvv = request.getParameter("cvv");

        // Here you would add payment processing logic
        // For example, using a payment gateway API to process the card

        out.println("<p>Product ID: " + productId + "</p>");
        out.println("<p>Product Name: " + productName + "</p>");
        out.println("<p>Total Price: ₹" + totalPrice + "</p>");
        out.println("<p>Payment processed successfully!</p>");
    %>
</body>
</html>
