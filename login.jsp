<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // Initialize necessary variables
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String userType = request.getParameter("user-type"); // Check if admin or user
    String errorMessage = "";

    // Database connection objects
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // Admin credentials (can be hardcoded or fetched from a secure place)
    String adminEmail = "admin@smartcampus.com";
    String adminPassword = "admin123";

    if (email != null && password != null && userType != null) {
        try {
            // If the user selects 'admin', validate against predefined admin credentials
            if ("admin".equals(userType)) {
                if (email.equals(adminEmail) && password.equals(adminPassword)) {
                    session.setAttribute("user", "Admin");
                    response.sendRedirect("dashboard.jsp"); // Redirect to admin dashboard
                } else {
                    errorMessage = "Invalid admin credentials.";
                }
            } 
            // If the user selects 'user', validate against database credentials
            else if ("user".equals(userType)) {
                String dbURL = "jdbc:mysql://localhost:3306/ecommerce";
                String dbUser = "root";
                String dbPassword = "tiger";

                // Load MySQL driver and establish a connection
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Query to validate user login credentials
                ps = connection.prepareStatement("SELECT * FROM Users WHERE email = ? AND password = ?");
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();

                if (rs.next()) {
                    session.setAttribute("user", rs.getString("name"));
                    response.sendRedirect("index.html"); // Redirect to user dashboard
                } else {
                    errorMessage = "Invalid user email or password.";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            errorMessage = "An error occurred during login. Please try again.";
        } finally {
            // Close ResultSet, PreparedStatement, and Connection to avoid resource leaks
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('123.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent box */
            width: 400px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
        }

        .box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #1e90ff;
            font-size: 24px;
        }

        /* Highlighting SMARTCAMPUS MARKETPLACE */
        .box h2 span {
            color: #e74c3c;
            font-weight: bold;
        }

        .field {
            margin-bottom: 15px;
        }

        .field label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .field input[type="text"], 
        .field input[type="password"],
        .field select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .checkbox {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .checkbox input[type='checkbox'] {
            margin-right: 10px;
        }

        .box input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            background-color: #1e90ff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .box input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .box-info {
            margin-top: 20px;
            text-align: center;
        }

        .box-info button {
            background-color: #ff1d58;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            margin: 10px 0;
            border-radius: 5px;
        }

        .box-info button:hover {
            background-color: #c0392b;
        }

        .box-info a {
            color: #3498db;
            text-decoration: none;
        }

        .box-info a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="box">
        <h2><span>SMARTCAMPUS MARKETPLACE</span> LOGIN</h2>
        <form action="login.jsp" method="POST">

            <!-- User type selection: Admin or User -->
            <div class="field">
                <label for="user-type">Login as:</label>
                <select id="user-type" name="user-type" required>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

            <!-- Email field -->
            <div class="field">
                <label for="email">E-MAIL</label>
                <input type="text" id="email" name="email" placeholder="Enter your email" required />
            </div>

            <!-- Password field -->
            <div class="field">
                <label for="password">PASSWORD</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required />
            </div>

            <!-- Keep me signed in checkbox -->
            <div class="checkbox">
                <input type="checkbox" id="keep-me-signed-in" name="keep-me-signed-in" value="TRUE">
                <label for="keep-me-signed-in">Keep me signed in</label>
            </div>

            <!-- Submit button -->
            <input type="submit" value="GET STARTED" />

            <!-- Display error message if login fails -->
            <p style="color:red;"><%= errorMessage %></p>
        </form>

        <!-- Forgot password and create account options -->
        <div class="box-info">
            <button onclick="window.location.href='forgotPassword.jsp';">Forgot Password?</button>
            <button onclick="window.location.href='signup.jsp';">CREATE ACCOUNT</button>
        </div>
    </div>

</body>
</html>
