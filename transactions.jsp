<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transaction Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .header {
            background-color: #007bff;
            color: #ffffff;
            padding: 20px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .transaction-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        .transaction-table th, .transaction-table td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: left;
        }
        .transaction-table th {
            background-color: #007bff;
            color: white;
        }
        .transaction-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
        }
        .footer button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .footer button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Transaction Summary</h1>
        </div>
        <table class="transaction-table">
            <tr>
                <th>Transaction ID</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>#TXN123456</td>
                <td>Wireless Earbuds</td>
                <td>₹2,499</td>
                <td>1</td>
                <td>₹2,499</td>
                <td>Completed</td>
            </tr>
            <tr>
                <td>#TXN123457</td>
                <td>Laptop</td>
                <td>₹55,999</td>
                <td>1</td>
                <td>₹55,999</td>
                <td>Completed</td>
            </tr>
            <tr>
                <td>#TXN123458</td>
                <td>Smartphone Case</td>
                <td>₹499</td>
                <td>2</td>
                <td>₹998</td>
                <td>Pending</td>
            </tr>
            <tr>
                <td>#TXN123459</td>
                <td>Bluetooth Speaker</td>
                <td>₹3,999</td>
                <td>1</td>
                <td>₹3,999</td>
                <td>Completed</td>
            </tr>
        </table>
        <div class="footer">
            <button type="button">Back to Orders</button>
        </div>
    </div>
</body>
</html>
