<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Detail - SmartCampus Marketplace</title>
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
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        .product-detail {
            display: flex;
            justify-content: space-around;
            align-items: center;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        .product-image {
            max-width: 40%;
        }
        .product-image img {
            width: 100%;
            border-radius: 8px;
        }
        .product-info {
            max-width: 50%;
            padding: 15px;
            text-align: left;
        }
        .button {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 20px;
            background-color: #007bff; /* Official blue */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
        }
        .button img {
            width: 20px;
            height: auto;
            margin-right: 10px;
        }
        .reviews {
            margin-top: 30px;
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
        }
        .review {
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eee;
        }
        .review p {
            margin: 5px 0;
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
        <h1>Product Detail</h1>
    </header>
    <div class="container">
        <%
            String productId = request.getParameter("id");
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            try {
                if (productId == null || productId.isEmpty()) {
                    out.println("<p>Product ID is missing.</p>");
                    return;
                }

                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

                String sql = "SELECT * FROM Products WHERE id = ?";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, Integer.parseInt(productId));
                rs = stmt.executeQuery();

                if (rs.next()) {
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    double price = rs.getDouble("price");
                    String imageUrl = rs.getString("image_url");
        %>
        <div class="product-detail">
            <div class="product-image">
                <img src="<%= imageUrl %>" alt="<%= name %>" id="mainImage">
            </div>

            <div class="product-info">
                <h2 class="book-title"><%= name %></h2>
                <p class="book-description"><%= description %></p>
                <p class="book-price">Price: ₹<span id="unitPrice"><%= price %></span></p>

                <label>Quantity: 
                    <input type="number" id="quantity" name="quantity" min="1" value="1" onchange="updateTotal()">
                </label>
                <p>Total Price: ₹<span id="totalPrice"><%= price %></span></p>

               

                <!-- Buy Now Button -->
                <form action="checkout.jsp" method="post" style="display:inline;">
                    <input type="hidden" name="product_id" value="<%= productId %>">
                    <input type="hidden" name="name" value="<%= name %>">
                    <input type="hidden" name="price" value="<%= price %>">
                    <input type="hidden" name="quantity" value="1"> <!-- Default quantity for immediate purchase -->
                    <input type="hidden" name="total_price" value="<%= price %>" id="checkoutTotalPrice">
                    <button type="submit" class="button">
                        <img src="1008.jpeg" alt="Buy Now"> Buy Now
                    </button>
                </form>
            </div>
        </div>

        <!-- Customer Reviews -->
        <div class="reviews">
            <h3>Customer Reviews</h3>
            <div class="review">
                <strong>John Doe</strong>
                <p>⭐⭐⭐⭐⭐</p>
                <p>This product is amazing! Highly recommend it to everyone.</p>
            </div>
            <div class="review">
                <strong>Jane Smith</strong>
                <p>⭐⭐⭐⭐</p>
                <p>Great quality, but the size runs a bit small.</p>
            </div>
            <div class="review">
                <strong>Sam Wilson</strong>
                <p>⭐⭐⭐⭐⭐</p>
                <p>Value for money. I'm very satisfied with my purchase.</p>
            </div>
        </div>

        <script>
            function updateTotal() {
                var price = parseFloat(document.getElementById('unitPrice').innerText);
                var quantity = parseInt(document.getElementById('quantity').value);
                var totalPrice = price * quantity;

                document.getElementById('totalPrice').innerText = totalPrice.toFixed(2);
                document.getElementById('checkoutTotalPrice').value = totalPrice.toFixed(2);
                document.getElementById('cartTotalPrice').value = totalPrice.toFixed(2);
            }
        </script>
        <%
                } else {
                    out.println("<p>Product not found.</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Invalid product ID format.</p>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>An error occurred while retrieving the product details. Please try again later.</p>");
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
    </div>
    <footer>
        <p>© 2024 SmartCampus Marketplace | Discover Your Next Read</p>
    </footer>
</body>
</html>
