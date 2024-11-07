<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronics - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 1rem;
            text-align: center;
            font-size: 24px;
        }
        .electronics-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }
        .electronic-item {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            width: 280px;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .electronic-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .electronic-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .electronic-title {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }
        .electronic-description {
            font-size: 14px;
            color: #666;
            margin-bottom: 15px;
        }
        .electronic-price {
            font-size: 16px;
            color: #4CAF50;
            margin-bottom: 10px;
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
        footer {
            text-align: center;
            padding: 20px;
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>

    <header>
        <h1>Electronics Collection</h1>
    </header>

    <section class="electronics-container">
        <!-- Electronic Item 1 -->
        <div class="electronic-item">
            <img src="191.jpg" alt="Bread Board">
            <h2 class="electronic-title">Bread Board</h2>
            <p class="electronic-description">A breadboard used for building temporary circuits.</p>
            <p class="electronic-price">₹999.00</p>
            <a href="details.jsp?id=11" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 2 -->
        <div class="electronic-item">
            <img src="192.jpg" alt="Connecting Wires">
            <h2 class="electronic-title">Connecting Wires</h2>
            <p class="electronic-description">Connecting wires for electrical current travel.</p>
            <p class="electronic-price">₹69.00</p>
            <a href="details.jsp?id=12" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 3 -->
        <div class="electronic-item">
            <img src="193.jpg" alt="Voltmeter">
            <h2 class="electronic-title">Voltmeter</h2>
            <p class="electronic-description">Measures both direct and alternating current voltages.</p>
            <p class="electronic-price">₹199.00</p>
            <a href="details.jsp?id=13" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 4 -->
        <div class="electronic-item">
            <img src="194.jpg" alt="Capacitor">
            <h2 class="electronic-title">Capacitor</h2>
            <p class="electronic-description">Stores charge, measured in farads.</p>
            <p class="electronic-price">₹49.00</p>
            <a href="details.jsp?id=14" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 5 -->
        <div class="electronic-item">
            <img src="195.jpg" alt="LED">
            <h2 class="electronic-title">LED</h2>
            <p class="electronic-description">LEDs dim slowly over time.</p>
            <p class="electronic-price">₹19.00</p>
            <a href="details.jsp?id=15" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 6 -->
        <div class="electronic-item">
            <img src="196.jpg" alt="Ammeter">
            <h2 class="electronic-title">Ammeter</h2>
            <p class="electronic-description">Measures electric current in amperes.</p>
            <p class="electronic-price">₹69.00</p>
            <a href="details.jsp?id=16" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 7 -->
        <div class="electronic-item">
            <img src="197.jpg" alt="Burner">
            <h2 class="electronic-title">Burner</h2>
            <p class="electronic-description">Device that produces heat or flame.</p>
            <p class="electronic-price">₹89.00</p>
            <a href="details.jsp?id=17" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 8 -->
        <div class="electronic-item">
            <img src="198.jpg" alt="Speedometer">
            <h2 class="electronic-title">Speedometer</h2>
            <p class="electronic-description">Measures the speed using a rotating magnet.</p>
            <p class="electronic-price">₹850.00</p>
            <a href="details.jsp?id=18" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 9 -->
        <div class="electronic-item">
            <img src="199.jpg" alt="Battery">
            <h2 class="electronic-title">Battery</h2>
            <p class="electronic-description">Safety concerns with lithium-ion batteries.</p>
            <p class="electronic-price">₹30.00</p>
            <a href="details.jsp?id=19" class="view-details-btn">View Details</a>
        </div>

        <!-- Electronic Item 10 -->
        <div class="electronic-item">
            <img src="200.jpg" alt="Condenser">
            <h2 class="electronic-title">Condenser</h2>
            <p class="electronic-description">Changes gas or vapor into a liquid by removing heat.</p>
            <p class="electronic-price">₹65.00</p>
            <a href="details.jsp?id=20" class="view-details-btn">View Details</a>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Electronics for Your Projects</p>
    </footer>

</body>
</html>
