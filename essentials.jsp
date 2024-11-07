<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stationery - SmartCampus Marketplace</title>
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
        .stationery-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }
        .stationery-item {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            width: 280px;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .stationery-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .stationery-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .stationery-title {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }
        .stationery-description {
            font-size: 14px;
            color: #666;
            margin-bottom: 15px;
        }
        .stationery-price {
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
        <h1>Stationery Collection</h1>
    </header>

    <section class="stationery-container">
        <!-- Stationery Item 1: Scientific Calculator -->
        <div class="stationery-item">
            <img src="209.jpg" alt="Scientific Calculator">
            <h2 class="stationery-title">Scientific Calculator</h2>
            <p class="stationery-description">A scientific calculator is a calculator that can perform advanced mathematical calculations, such as trigonometry, logarithms, and exponentials.</p>
            <p class="stationery-price">₹1.00</p>
            <a href="details.jsp?id=29" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 2: A4 Paper -->
        <div class="stationery-item">
            <img src="210.jpg" alt="A4 Paper">
            <h2 class="stationery-title">A4 Paper</h2>
            <p class="stationery-description">A4 is a paper size that is commonly used for printing, letters, and documents.</p>
            <p class="stationery-price">₹2.00</p>
            <a href="details.jsp?id=30" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 3: Anurag Cup -->
        <div class="stationery-item">
            <img src="1000.jpg" alt="Anurag Cup">
            <h2 class="stationery-title">Anurag Cup</h2>
            <p class="stationery-description">A typical tea cup is a small, cylindrical vessel with a rounded base designed for holding hot beverages like tea. It usually has a smooth, polished surface, made from materials like ceramic, porcelain, or glass.</p>
            <p class="stationery-price">₹99.00</p>
            <a href="details.jsp?id=31" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 4: Apron -->
        <div class="stationery-item">
            <img src="1001.jpg" alt="Apron">
            <h2 class="stationery-title">Apron</h2>
            <p class="stationery-description">An apron is a protective garment worn over clothes, often tied at the waist and neck. Made from durable materials, it shields clothing from spills and stains.</p>
            <p class="stationery-price">₹599.00</p>
            <a href="details.jsp?id=32" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 5: Sports -->
        <div class="stationery-item">
            <img src="1003.jpg" alt="Sports">
            <h2 class="stationery-title">Sports</h2>
            <p class="stationery-description">Sports are physical activities or games involving skill, competition, and often teamwork. They promote fitness, discipline, and entertainment.</p>
            <p class="stationery-price">₹99.00</p>
            <a href="details.jsp?id=33" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 6: M1 -->
        <div class="stationery-item">
            <img src="171.jpg" alt="M1">
            <h2 class="stationery-title">M1</h2>
            <p class="stationery-description">M1 is a measure of a country's money supply that includes physical money and checkable deposits, considered the most liquid form of money.</p>
            <p class="stationery-price">₹999.00</p>
            <a href="details.jsp?id=34" class="view-details-btn">View Details</a>
        </div>

    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Stationery Items for Students</p>
    </footer>

</body>
</html>
