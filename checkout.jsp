<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout - SmartCampus Marketplace</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f4f9;
            color: #333;
            padding: 20px;
        }
        .checkout-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            margin: 50px auto;
        }
        h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        .product-details {
            border: 2px solid #007bff;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #f8f9fa;
        }
        .product-details p {
            font-size: 16px;
            color: #555;
        }
        .product-details p strong {
            color: #333;
        }
        .total-price {
            font-size: 20px;
            font-weight: bold;
            color: #28a745;
            text-align: right;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .button {
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            margin: 10px;
            transition: background-color 0.3s ease;
        }
        .button.buy-now {
            background-color: #007bff;
        }
        .button.buy-now:hover {
            background-color: #0056b3;
        }
        .button.add-to-cart {
            background-color: #28a745;
        }
        .button.add-to-cart:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="checkout-container">
    <h1>Product Checkout</h1>
    
    <!-- Server-Side Logic for Checkout -->
    <%
        String productId = request.getParameter("product_id");
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double totalPrice = quantity * price;

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

            String sql = "INSERT INTO OrderDetails (product_id, name, quantity, price, total_price) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(productId));
            stmt.setString(2, name);
            stmt.setInt(3, quantity);
            stmt.setDouble(4, price);
            stmt.setDouble(5, totalPrice);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<p>Order placed successfully!</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error placing the order. Please try again later.</p>");
        } finally {
            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>

    <!-- Product Details Section -->
    <div class="product-details">
        <p><strong>Product ID:</strong> <%= productId %></p>
        <p><strong>Product Name:</strong> <%= name %></p>
        <p><strong>Price per unit:</strong> ₹<%= price %></p>
        <p><strong>Quantity:</strong> <%= quantity %></p>
        <p class="total-price">Total Price: ₹<%= totalPrice %></p>
    </div>

    <!-- Buttons for "Buy Now" and "Add to Cart" -->
    <div class="button-container">
        <!-- Buy Now Button -->
        <form action="credit_card.jsp" method="post" style="display:inline;">
            <input type="hidden" name="product_id" value="<%= productId %>">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="price" value="<%= price %>">
            <input type="hidden" name="quantity" value="<%= quantity %>">
            <input type="hidden" name="total_price" value="<%= totalPrice %>">
            <button type="submit" class="button buy-now">Buy Now</button>
        </form>

        <!-- Add to Cart Button -->
        <form action="cart.jsp" method="post" style="display:inline;">
            <input type="hidden" name="product_id" value="<%= productId %>">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="price" value="<%= price %>">
            <input type="hidden" name="quantity" value="<%= quantity %>">
            <input type="hidden" name="total_price" value="<%= totalPrice %>">
            <button type="submit" class="button add-to-cart">Add to Cart</button>
        </form>
    </div>

</div>

</body>
</html>
