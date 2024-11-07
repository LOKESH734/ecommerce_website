<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deals - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            animation: backgroundChange 8s infinite alternate;
        }

        @keyframes backgroundChange {
            0% { background: linear-gradient(to right, #74ebd5, #ACB6E5); }
            100% { background: linear-gradient(to right, #ff9a9e, #fecfef); }
        }

        header {
            background-color: #6A82FB;
            background-image: linear-gradient(315deg, #6A82FB 0%, #FC5C7D 74%);
            color: white;
            text-align: center;
            padding: 2rem 0;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        .deals-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .deal-item {
            width: 280px;
            margin: 15px;
            border: none;
            border-radius: 15px;
            overflow: hidden;
            text-align: center;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            background-color: white;
        }

        .deal-item:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        .deal-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: transform 0.3s ease-in-out;
        }

        .deal-item:hover img {
            transform: scale(1.05);
        }

        .deal-details {
            padding: 20px;
        }

        .deal-title {
            font-size: 20px;
            margin: 10px 0;
            font-weight: bold;
            color: #333;
        }

        .deal-price {
            font-size: 18px;
            color: #27AE60;
            margin: 5px 0;
        }

        .deal-original-price {
            text-decoration: line-through;
            color: #999;
        }

        .buy-now-btn {
            background-color: #6A82FB;
            background-image: linear-gradient(315deg, #6A82FB 0%, #FC5C7D 74%);
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 25px;
            margin-top: 10px;
            display: inline-block;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .buy-now-btn:hover {
            background-color: #45a049;
            background-image: linear-gradient(315deg, #3bb78f 0%, #0bab64 74%);
        }

        footer {
            padding: 1rem 0;
            text-align: center;
            background-color: #6A82FB;
            color: white;
            font-size: 14px;
            box-shadow: 0px -4px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <header>
        <h1>Exclusive College Merchandise & Product Deals</h1>
    </header>

    <section class="deals-container">
        <!-- Deal Item 1 -->
        <div class="deal-item">
            <img src="1000.jpg" alt="Anurag University Cup">
            <div class="deal-details">
                <h2 class="deal-title">Anurag University Cup</h2>
                <p class="deal-price">₹75.00 <span class="deal-original-price">₹99.00</span></p>
                <a href="details.jsp?id=31" class="buy-now-btn">Buy Now</a>
            </div>
        </div>

        <!-- Deal Item 2 -->
        <div class="deal-item">
            <img src="1001.jpg" alt="Anurag University T-Shirt">
            <div class="deal-details">
                <h2 class="deal-title">Anurag University T-Shirt</h2>
                <p class="deal-price">₹499.00 <span class="deal-original-price">₹699.00</span></p>
                <a href="details.jsp?id=32" class="buy-now-btn">Buy Now</a>
            </div>
        </div>

        <!-- Deal Item 3 -->
        <div class="deal-item">
            <img src="171.jpg" alt="Anurag University Notebook">
            <div class="deal-details">
                <h2 class="deal-title">Anurag University Notebook</h2>
                <p class="deal-price">₹49.00 <span class="deal-original-price">₹69.00</span></p>
                <a href="details.jsp?id=33" class="buy-now-btn">Buy Now</a>
            </div>
        </div>

        <!-- Deal Item 4 -->
        <div class="deal-item">
            <img src="204.jpg" alt="University Branded Pen">
            <div class="deal-details">
                <h2 class="deal-title">University Branded Pen</h2>
                <p class="deal-price">₹15.00 <span class="deal-original-price">₹20.00</span></p>
                <a href="details.jsp?id=34" class="buy-now-btn">Buy Now</a>
            </div>
        </div>

        <!-- Deal Item 5 -->
        <div class="deal-item">
            <img src="1006.jpeg" alt="University Hoodie">
            <div class="deal-details">
                <h2 class="deal-title">Anurag University Hoodie</h2>
                <p class="deal-price">₹899.00 <span class="deal-original-price">₹1,199.00</span></p>
                <a href="details.jsp?id=35" class="buy-now-btn">Buy Now</a>
            </div>
        </div>

        <!-- Deal Item 6 -->
        <div class="deal-item">
            <img src="10007.jpg" alt="Lab Apron">
            <div class="deal-details">
                <h2 class="deal-title">Lab Apron</h2>
                <p class="deal-price">₹499.00 <span class="deal-original-price">₹599.00</span></p>
                <a href="details.jsp?id=36" class="buy-now-btn">Buy Now</a>
            </div>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Exclusive College Deals</p>
    </footer>

</body>
</html>
