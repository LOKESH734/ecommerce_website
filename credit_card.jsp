<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credit Card Payment</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
            color: #333;
        }
        .payment-container {
            border: 2px solid #007bff;
            padding: 30px;
            width: 500px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
        }
        label {
            font-size: 16px;
            color: #495057;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 16px;
        }
        .card-details {
            margin-bottom: 20px;
        }
        .button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            border: none;
            color: white;
            font-size: 18px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #218838;
        }
        .additional-info {
            background-color: #e9ecef;
            padding: 15px;
            border-radius: 6px;
            margin-top: 30px;
        }
        .info-title {
            font-size: 18px;
            margin-bottom: 10px;
            color: #007bff;
        }
        .info-content p {
            margin: 8px 0;
            color: #495057;
        }
        .secure-payment {
            margin-top: 30px;
            text-align: center;
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <h1>Secure Credit Card Payment</h1>

        <form action="process_order.jsp" method="post">
            <input type="hidden" name="product_id" value="<%= request.getParameter("product_id") %>">
            <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
            <input type="hidden" name="total_price" value="<%= request.getParameter("total_price") %>">
            <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>"> <!-- Assuming user_id is stored in session -->

            <!-- Credit Card Details -->
            <div class="card-details">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="card_number" placeholder="XXXX XXXX XXXX XXXX" required>

                <label for="expiryDate">Expiry Date (MM/YY):</label>
                <input type="text" id="expiryDate" name="expiry_date" placeholder="MM/YY" required>

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" placeholder="XXX" required>
            </div>

            <!-- Payment Button -->
            <button type="submit" class="button">Pay Now</button>
        </form>

        <!-- Additional Information Section -->
        <div class="additional-info">
            <div class="info-title">Why Choose Our Payment System?</div>
            <div class="info-content">
                <p><strong>Secure Transactions:</strong> All payments are processed through encrypted gateways to protect your financial data.</p>
                <p><strong>Multiple Payment Options:</strong> Pay with Visa, MasterCard, American Express, or UPI for your convenience.</p>
                <p><strong>Fast Processing:</strong> Transactions are processed in real time, ensuring a smooth and fast checkout experience.</p>
            </div>
        </div>

        <!-- Secure Payment Assurance -->
        <div class="secure-payment">
            <p>Your payment is 100% secure and encrypted</p>
        </div>
    </div>
</body>
</html>
