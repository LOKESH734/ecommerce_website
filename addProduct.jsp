<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9; /* Light grey background */
            margin: 0;
            padding: 0;
        }

        /* Header styles */
        header {
            background-color: #2980b9; /* Header blue color */
            color: white;
            padding: 15px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        /* Section styles */
        .add-product-section {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s; /* Animation */
        }

        /* Animation keyframes */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Input styles */
        input[type="text"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #2980b9; /* Blue border */
            border-radius: 4px;
            transition: border-color 0.3s;
        }

        /* Focus effect */
        input:focus,
        select:focus,
        textarea:focus {
            border-color: #3498db; /* Lighter blue on focus */
            outline: none;
        }

        /* Button styles */
        button {
            background-color: #3498db; /* Button color */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
            width: 100%;
        }

        /* Button hover effect */
        button:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        /* Success/Error message styles */
        p {
            font-size: 16px;
            color: #2c3e50; /* Dark grey */
        }

        .success {
            color: #27ae60; /* Green for success */
        }

        .error {
            color: #e74c3c; /* Red for errors */
        }

        /* Footer styles */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #2980b9;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Add New Product</h1>
    </header>

    <section class="add-product-section">
        <form method="POST" action="addProduct.jsp">
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="category">Category:</label>
            <select id="category" name="category_id" required>
                <option value="">Select Category</option>
                <%
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        // Database connection
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

                        String query = "SELECT id, category_name FROM Categories";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            int categoryId = rs.getInt("id");
                            String categoryName = rs.getString("category_name");
                %>
                            <option value="<%= categoryId %>"><%= categoryName %></option>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                    }
                %>
            </select>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>

            <label for="imageUrl">Image URL:</label>
            <input type="text" id="imageUrl" name="imageUrl" required>

            <label for="stock">Stock Quantity:</label>
            <input type="number" id="stock" name="stock" required>

            <button type="submit">Add Product</button>
        </form>

        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String name = request.getParameter("name");
                int category_id = Integer.parseInt(request.getParameter("category_id"));
                String description = request.getParameter("description");
                double price = Double.parseDouble(request.getParameter("price"));
                String imageUrl = request.getParameter("imageUrl");
                int stock = Integer.parseInt(request.getParameter("stock"));

                Connection connPost = null;
                PreparedStatement stmtPost = null;

                try {
                    // Database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connPost = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

                    String sql = "INSERT INTO products (name, category_id, description, price, image_url, stock) VALUES (?, ?, ?, ?, ?, ?)";
                    stmtPost = connPost.prepareStatement(sql);
                    stmtPost.setString(1, name);
                    stmtPost.setInt(2, category_id);
                    stmtPost.setString(3, description);
                    stmtPost.setDouble(4, price);
                    stmtPost.setString(5, imageUrl);
                    stmtPost.setInt(6, stock);
                    
                    int rowsInserted = stmtPost.executeUpdate();
                    if (rowsInserted > 0) {
        %>
                        <p class="success">Product added successfully!</p>
        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
        %>
                    <p class="error">Error adding product: <%= e.getMessage() %></p>
        <%
                } finally {
                    if (stmtPost != null) try { stmtPost.close(); } catch (SQLException ignore) {}
                    if (connPost != null) try { connPost.close(); } catch (SQLException ignore) {}
                }
            }
        %>
    </section>

    <footer>
        <p>&copy; 2024 SmartCampus Marketplace</p>
    </footer>
</body>
</html>
