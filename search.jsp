<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Products - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* General styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #004aad;
            text-align: center;
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        form {
            text-align: center;
            margin-bottom: 30px;
        }
        form input[type="text"] {
            padding: 12px;
            width: 320px;
            border: 2px solid #004aad;
            border-radius: 8px;
            font-size: 16px;
        }
        form button {
            padding: 12px 25px;
            background-color: #004aad;
            border: none;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        form button:hover {
            background-color: #003080;
        }

        /* Product styles */
        .product {
            border: 1px solid #cce1ff;
            padding: 20px;
            margin: 20px;
            display: inline-block;
            width: 240px;
            text-align: center;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .product:hover {
            transform: scale(1.05);
        }
        .product img {
            width: 160px;
            height: auto;
            border-radius: 8px;
        }
        .product h3 {
            color: #004aad;
            font-size: 18px;
        }
        .product p {
            color: #666;
            font-size: 14px;
        }
        .product button {
            padding: 10px 20px;
            background-color: #28a745;
            border: none;
            color: white;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 14px;
        }
        .product button:hover {
            background-color: #218838;
        }

        /* Ratings section */
        .ratings {
            text-align: center;
            margin-top: 50px;
            padding: 30px;
            background-color: #e0f0ff;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .ratings h2 {
            color: #004aad;
            font-size: 24px;
            margin-bottom: 15px;
        }
        .ratings p {
            color: #333;
            font-size: 16px;
            margin-bottom: 10px;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 30px;
            margin-top: 50px;
            background-color: #004aad;
            color: white;
            font-size: 14px;
        }
        footer p {
            margin: 5px 0;
        }
    </style>
</head>
<body>

    <h1>SmartCampus Marketplace</h1>
    <form action="search.jsp" method="get">
        <input type="text" name="query" placeholder="Search for products..." required>
        <button type="submit">Search</button>
    </form>

    <%
        String query = request.getParameter("query");
        if (query != null && !query.isEmpty()) {
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

                String sql = "SELECT * FROM Products WHERE name LIKE ?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, "%" + query + "%");
                rs = stmt.executeQuery();

                // Check if any products are found
                boolean found = false;

                while (rs.next()) {
                    found = true;
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");
                    double price = rs.getDouble("price");
                    String imageUrl = rs.getString("image_url");
    %>
                    <div class="product">
                        <img src="<%= imageUrl %>" alt="<%= name %>">
                        <h3><%= name %></h3>
                        <p><%= description %></p>
                        <p>Price: ₹<%= price %></p>
                        <form action="details.jsp" method="get">
                            <input type="hidden" name="id" value="<%= id %>">
                            <button type="submit">View Details</button>
                        </form>
                    </div>
    <%
                }
                if (!found) {
                    out.println("<p>No products found for your search.</p>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>An error occurred while searching for products. Please try again later.</p>");
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        }
    %>

    <!-- Ratings Section -->
    <div class="ratings">
        <h2>Why Choose SmartCampus Marketplace?</h2>
        <p>⭐ Rated 4.9/5 by thousands of happy students</p>
        <p>✔ Wide range of products tailored to your college needs</p>
        <p>✔ Fast and reliable delivery</p>
        <p>✔ Exclusive student discounts and offers</p>
    </div>

    <!-- Footer -->
    <footer>
        <p>SmartCampus Marketplace - Your one-stop shop for all things college!</p>
        <p>&copy; 2024 SmartCampus Marketplace. All rights reserved.</p>
    </footer>

</body>
</html>
