<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Things for Delivery</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff; /* Official blue */
            color: white;
            padding: 1rem 0;
            text-align: center;
            font-size: 24px;
        }
        .container {
            max-width: 1000px;
            margin: auto;
            padding: 20px;
        }
        .delivery-details {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #007bff; /* Official blue */
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Things for Delivery</h1>
    </header>

    <div class="container">
        <div class="delivery-details">
            <h2>Product Information</h2>
            <%
                // Retrieve the product information passed via POST method
                String productId = request.getParameter("product_id");
                String productName = request.getParameter("name");
                String price = request.getParameter("price");
                String quantity = request.getParameter("quantity");
                String totalPrice = request.getParameter("total_price");

                if (productId != null && productName != null && price != null && quantity != null && totalPrice != null) {
            %>
            <p><strong>Product ID:</strong> <%= productId %></p>
            <p><strong>Product Name:</strong> <%= productName %></p>
            <p><strong>Price per Unit:</strong> ₹<%= price %></p>
            <p><strong>Quantity:</strong> <%= quantity %></p>
            <p><strong>Total Price:</strong> ₹<%= totalPrice %></p>
            <%
                } else {
                    out.println("<p>Product details are missing. Please try again.</p>");
                }
            %>
        </div>
    </div>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Admin Panel</p>
    </footer>
</body>
</html>
