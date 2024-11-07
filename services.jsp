<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #fbc2eb, #a6c1ee);
            animation: backgroundAnimation 10s ease-in-out infinite alternate;
        }

        @keyframes backgroundAnimation {
            0% { background: linear-gradient(to right, #fbc2eb, #a6c1ee); }
            100% { background: linear-gradient(to right, #f5f7fa, #c3cfe2); }
        }

        header {
            background-color: #ff9a9e;
            background-image: linear-gradient(315deg, #ff9a9e 0%, #fecfef 74%);
            color: white;
            text-align: center;
            padding: 2rem 0;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 2.5rem;
            margin: 0;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 40px;
        }

        .service-item {
            background: white;
            border: none;
            border-radius: 15px;
            margin: 20px;
            width: 280px;
            text-align: center;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            padding: 25px;
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            color: white;
        }

        .service-item:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        .service-title {
            font-size: 24px;
            margin: 20px 0 10px 0;
            font-weight: bold;
            text-transform: uppercase;
            color: #ffffff;
        }

        .service-description {
            font-size: 16px;
            margin: 10px 0;
            color: #f0f0f0;
            padding: 0 10px;
        }

        footer {
            text-align: center;
            padding: 2rem 0;
            background-color: #ff9a9e;
            background-image: linear-gradient(315deg, #ff9a9e 0%, #fecfef 74%);
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
            box-shadow: 0px -4px 10px rgba(0, 0, 0, 0.1);
            letter-spacing: 1px;
        }

        footer p {
            margin: 0;
            font-size: 14px;
            text-transform: uppercase;
        }
    </style>
</head>
<body>

    <header>
        <h1>Our Services</h1>
    </header>

    <section class="services-container">
        <!-- Service Item 1 -->
        <div class="service-item">
            <h2 class="service-title">Fast Delivery</h2>
            <p class="service-description">Get your orders delivered to your doorstep within 24 hours.</p>
        </div>

        <!-- Service Item 2 -->
        <div class="service-item">
            <h2 class="service-title">Customer Support</h2>
            <p class="service-description">Our support team is available 24/7 to assist you with any queries.</p>
        </div>

        <!-- Service Item 3 -->
        <div class="service-item">
            <h2 class="service-title">Quality Assurance</h2>
            <p class="service-description">All products go through strict quality checks before delivery.</p>
        </div>

        <!-- Service Item 4 -->
        <div class="service-item">
            <h2 class="service-title">Easy Returns</h2>
            <p class="service-description">Return any product within 30 days if you're not satisfied.</p>
        </div>

        <!-- Service Item 5 -->
        <div class="service-item">
            <h2 class="service-title">Secure Payments</h2>
            <p class="service-description">We ensure secure payment gateways for all your transactions.</p>
        </div>

        <!-- Service Item 6 -->
        <div class="service-item">
            <h2 class="service-title">Exclusive Discounts</h2>
            <p class="service-description">Join our newsletter to receive exclusive deals and discounts.</p>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Your Trusted College Partner</p>
    </footer>

</body>
</html>
