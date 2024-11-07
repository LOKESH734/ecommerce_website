<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Distributor Balance - MyCable</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .top-bar {
            background-color: #4CAF50;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .top-bar img {
            height: 40px;
        }

        .content {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .content h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-group button:hover {
            background-color: #45a049;
        }

        .message {
            margin-top: 20px;
            font-size: 16px;
            color: red;
            text-align: center;
        }

        .message.success {
            color: green;
        }
    </style>
</head>
<body>

<div class="top-bar">
    <img src="logo.png" alt="MyCable Logo">
    <span class="user-id">User: admin</span>
    <img src="logo.png" alt="MyCable Logo">
</div>

<div class="content">
    <h2>Update Distributor Balance</h2>
    <form method="post" action="pay.jsp">
        <div class="form-group">
            <label for="cardNumber">Card Number</label>
            <input type="text" id="cardNumber" name="cardNumber" required>
        </div>
        <div class="form-group">
            <label for="cardHolderName">Card Holder Name</label>
            <input type="text" id="cardHolderName" name="cardHolderName" required>
        </div>
        <div class="form-group">
            <label for="expiryDate">Expiry Date (MM/YY)</label>
            <input type="text" id="expiryDate" name="expiryDate" required>
        </div>
        <div class="form-group">
            <label for="cvv">CVV</label>
            <input type="text" id="cvv" name="cvv" required>
        </div>
        <div class="form-group">
            <label for="amount">Select Product Amount</label>
            <select id="amount" name="amount" required>
                <option value="">--Select Amount--</option>
                <option value="100">₹100</option>
                <option value="200">₹200</option>
                <option value="500">₹500</option>
                <option value="1000">₹1000</option>
                <option value="2000">₹2000</option>
            </select>
        </div>
        <div class="form-group">
            <button type="submit">Submit</button>
        </div>
    </form>

    <%
        // Handle form submission and processing
        if ("post".equalsIgnoreCase(request.getMethod())) {
            String cardNumber = request.getParameter("cardNumber");
            String cardHolderName = request.getParameter("cardHolderName");
            String expiryDate = request.getParameter("expiryDate");
            String cvv = request.getParameter("cvv");
            String amountStr = request.getParameter("amount");

            if (cardNumber == null || cardHolderName == null || expiryDate == null || cvv == null || amountStr == null ||
                cardNumber.trim().isEmpty() || cardHolderName.trim().isEmpty() || expiryDate.trim().isEmpty() || cvv.trim().isEmpty() || amountStr.trim().isEmpty()) {
                out.println("<div class='message'>All fields are required.</div>");
            } else {
                try {
                    double amount = Double.parseDouble(amountStr);

                    // Predefined valid card details
                    String validCardNumber = "123456789";
                    String validCardHolderName = "K lokesh";
                    String validExpiryDate = "04/25";
                    String validCvv = "699";

                    if (cardNumber.equals(validCardNumber) &&
                        cardHolderName.equals(validCardHolderName) &&
                        expiryDate.equals(validExpiryDate) &&
                        cvv.equals(validCvv)) {

                        // Assume a current balance and update it
                        double currentBalance = 1000.00;
                        double newBalance = currentBalance + amount;

                        out.println("<div class='message success'>Balance updated successfully. New balance: ₹" + newBalance + "</div>");
                        out.println("<script>setTimeout(function(){ window.location.href = 'search.jsp'; }, 3000);</script>");
                    } else {
                        out.println("<div class='message'>Card details do not match our records.</div>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<div class='message'>Invalid amount format.</div>");
                }
            }
        }
    %>
</div>

</body>
</html>
