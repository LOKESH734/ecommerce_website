<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="style.css">
    <!-- Automatically redirect after 5 seconds -->
    <meta http-equiv="refresh" content="5;url=index.html">
    <style>
        .confirmation-container {
            max-width: 600px;
            margin: 50px auto;
            text-align: center;
        }
        .confirmation-container h1 {
            color: #28a745;
        }
        .confirmation-container p {
            font-size: 18px;
            margin: 15px 0;
        }
        .home-link {
            margin-top: 20px;
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }
        .home-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="confirmation-container">
        <h1>Thank You for Your Order!</h1>
        <p>Your order has been placed successfully. A confirmation email will be sent to you shortly.</p>
        <p>You will be redirected to the home page in 5 seconds...</p>
        <p>If you are not redirected, click <a href="index.html" class="home-link">here</a>.</p>
    </div>
</body>
</html>
