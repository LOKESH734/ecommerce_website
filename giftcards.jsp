<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gift Cards - SmartCampus Marketplace</title>
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
        .giftcards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            margin-top: 20px;
        }
        .giftcard {
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
        }
        .giftcard:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
        }
        .giftcard h3 {
            margin: 0;
            font-size: 24px;
        }
        .giftcard p {
            font-size: 16px;
            margin: 10px 0;
        }
        .giftcard button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .giftcard button:hover {
            background-color: #45a049;
        }
        .animated-background {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(255, 255, 255, 0.2);
            animation: pulse 3s infinite;
            border-radius: 15px;
            z-index: 0;
        }
        @keyframes pulse {
            0% {
                transform: scale(1);
                opacity: 1;
            }
            50% {
                transform: scale(1.05);
                opacity: 0.5;
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
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
        <h1>Gift Cards</h1>
        <p>Give the gift of choice with our exclusive gift cards!</p>
    </header>

    <section class="giftcards-container">
        <!-- Gift Card 1 -->
        <div class="giftcard">
            <div class="animated-background"></div>
            <h3>$10 Gift Card</h3>
            <p>Perfect for small purchases!</p>
            <button onclick="alert('Gift card purchased!')">Buy Now</button>
        </div>

        <!-- Gift Card 2 -->
        <div class="giftcard">
            <div class="animated-background"></div>
            <h3>$25 Gift Card</h3>
            <p>Great for a treat or two!</p>
            <button onclick="alert('Gift card purchased!')">Buy Now</button>
        </div>

        <!-- Gift Card 3 -->
        <div class="giftcard">
            <div class="animated-background"></div>
            <h3>$50 Gift Card</h3>
            <p>Ideal for any occasion!</p>
            <button onclick="alert('Gift card purchased!')">Buy Now</button>
        </div>

        <!-- Gift Card 4 -->
        <div class="giftcard">
            <div class="animated-background"></div>
            <h3>$100 Gift Card</h3>
            <p>For those who deserve the best!</p>
            <button onclick="alert('Gift card purchased!')">Buy Now</button>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Your Trusted College Partner</p>
    </footer>

</body>
</html>
