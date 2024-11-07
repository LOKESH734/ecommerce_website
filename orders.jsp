<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Orders</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transform: translateY(-50px);
            animation: slideInFromLeft 1s ease forwards;
        }
        @keyframes slideInFromLeft {
            0% {
                transform: translateX(-100%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }
        .header {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            border-radius: 8px 8px 0 0;
            text-align: center;
            animation: headerGlow 1s ease infinite alternate;
        }
        @keyframes headerGlow {
            0% {
                box-shadow: 0 0 10px #007bff;
            }
            100% {
                box-shadow: 0 0 20px #007bff;
            }
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .order-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            animation: fadeIn 1.5s ease;
        }
        .order-table th, .order-table td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: left;
        }
        .order-table th {
            background-color: #007bff;
            color: white;
        }
        .order-table tr:hover {
            background-color: #f1f1f1;
            transform: scale(1.02);
            transition: all 0.3s ease;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            animation: fadeInUp 1.5s ease;
        }
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .footer button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            animation: rotateButton 2s infinite;
        }
        @keyframes rotateButton {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }
        .footer button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Your Orders</h1>
        </div>
        <table class="order-table">
            <tr>
                <th>Order ID</th>
                <th>Product</th>
                <th>Price</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>#ORD12345</td>
                <td>Wireless Headphones</td>
                <td>₹2,499</td>
                <td>25th Sept, 2024</td>
                <td>Delivered</td>
            </tr>
            <tr>
                <td>#ORD12346</td>
                <td>Smartphone</td>
                <td>₹19,999</td>
                <td>22nd Sept, 2024</td>
                <td>Shipped</td>
            </tr>
            <tr>
                <td>#ORD12347</td>
                <td>Gaming Mouse</td>
                <td>₹1,599</td>
                <td>20th Sept, 2024</td>
                <td>Processing</td>
            </tr>
        </table>
        <div class="footer">
            <button type="button">Track Orders</button>
        </div>
    </div>
</body>
</html>
