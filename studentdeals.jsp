<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Deals - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            overflow-x: hidden;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: relative;
            z-index: 1;
        }
        .deals-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            margin-top: 20px;
        }
        .deal {
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
            border-radius: 15px;
            margin: 15px;
            width: 300px;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 0.5s forwards;
        }
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .deal h3 {
            margin: 0;
            font-size: 24px;
        }
        .deal p {
            font-size: 16px;
            margin: 10px 0;
        }
        .deal button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .deal button:hover {
            background-color: #45a049;
        }
        .deal:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>Student Deals</h1>
        <p>Exclusive discounts and offers for students!</p>
    </header>

    <section class="deals-container">
        <!-- Deal 1 -->
        <div class="deal">
            <h3>50% Off on Books</h3>
            <p>Get half off on your favorite textbooks this semester!</p>
            <button onclick="alert('Deal claimed!')">Claim Now</button>
        </div>

        <!-- Deal 2 -->
        <div class="deal">
            <h3>Free Coffee with Every Purchase</h3>
            <p>Buy any product and get a free coffee at the campus cafe!</p>
            <button onclick="alert('Deal claimed!')">Claim Now</button>
        </div>

        <!-- Deal 3 -->
        <div class="deal">
            <h3>Buy One Get One Free</h3>
            <p>Buy one item from our merchandise and get another free!</p>
            <button onclick="alert('Deal claimed!')">Claim Now</button>
        </div>

        <!-- Deal 4 -->
        <div class="deal">
            <h3>Student Discount on Electronics</h3>
            <p>Enjoy a special discount on laptops and gadgets!</p>
            <button onclick="alert('Deal claimed!')">Claim Now</button>
        </div>

        <!-- Deal 5 -->
        <div class="deal">
            <h3>Free Stationery Kit</h3>
            <p>Receive a free stationery kit with every purchase over $30!</p>
            <button onclick="alert('Deal claimed!')">Claim Now</button>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Your Trusted College Partner</p>
    </footer>

</body>
</html>
