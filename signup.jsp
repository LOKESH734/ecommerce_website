<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String role = request.getParameter("role");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String errorMessage = "";
    Connection connection = null;
    PreparedStatement ps = null;

    if (name != null && email != null && password != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dbURL = "jdbc:mysql://localhost:3306/ecommerce?useSSL=false&serverTimezone=UTC";
            String dbUser = "root"; // Your database username
            String dbPassword = "tiger"; // Your database password

            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Check if email already exists
            ps = connection.prepareStatement("SELECT * FROM Users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                errorMessage = "Email already exists.";
            } else {
                // Insert new user
                ps = connection.prepareStatement("INSERT INTO Users (name, email, password, role, address, phone) VALUES (?, ?, ?, ?, ?, ?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password); // Consider hashing passwords for security
                ps.setString(4, role);
                ps.setString(5, address);
                ps.setString(6, phone);
                ps.executeUpdate();
                response.sendRedirect("login.jsp"); // Redirect to login page
            }
        } catch (SQLException e) {
            errorMessage = "Database error: " + e.getMessage();
        } catch (ClassNotFoundException e) {
            errorMessage = "JDBC Driver not found. Make sure the MySQL Connector/J is in the classpath.";
        } catch (Exception e) {
            errorMessage = "Error: " + e.getMessage();
        } finally {
            if (ps != null) ps.close();
            if (connection != null) connection.close();
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #84fab0, #8fd3f4);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            overflow: hidden;
        }
        .content {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #333;
        }
        input[type="text"], input[type="email"], input[type="password"], textarea, select {
            width: 100%;
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: all 0.3s ease;
        }
        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, textarea:focus, select:focus {
            border-color: #8fd3f4;
        }
        textarea {
            resize: none;
            height: 60px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #84fab0;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover {
            background-color: #8fd3f4;
        }
        .view-details-btn {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .view-details-btn:hover {
            background-color: #45a049;
        }
        p {
            margin-top: 10px;
            color: #333;
            font-size: 14px;
        }
        p a {
            color: #84fab0;
            text-decoration: none;
        }
        p a:hover {
            text-decoration: underline;
        }
        /* Animations */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: scale(0.9);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        /* Responsive */
        @media (max-width: 500px) {
            .content {
                width: 100%;
                padding: 15px;
            }
        }
    </style>
</head>
<body>

<div class="content">
    <h2>Sign Up</h2>
    <form action="signup.jsp" method="POST">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="role">Role:</label>
            <select id="role" name="role">
                <option value="student" selected>Student</option>
                <option value="admin">Admin</option>
                <option value="staff">Staff</option>
            </select>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea id="address" name="address"></textarea>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone">
        </div>
        <button type="submit">Sign Up</button>
        <p style="color:red;"><%= errorMessage %></p>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </form>
</div>

</body>
</html>
