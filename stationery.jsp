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
        <!-- Stationery Item 1 -->
        <div class="stationery-item">
            <img src="201.jpg" alt="ID Tag">
            <h2 class="stationery-title">ID Tag</h2>
            <p class="stationery-description">Each student is issued an Identity card that remains valid for the total duration of the course. This ID card can be used to avail Medicare facilities.</p>
            <p class="stationery-price">₹15.00</p>
            <a href="details.jsp?id=21" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 2 -->
        <div class="stationery-item">
            <img src="202.jpg" alt="Compass">
            <h2 class="stationery-title">Compass</h2>
            <p class="stationery-description">A compass is a device that shows direction and is used for navigation and geographic orientation.</p>
            <p class="stationery-price">₹199.00</p>
            <a href="details.jsp?id=22" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 3 -->
        <div class="stationery-item">
            <img src="203.jpg" alt="Blue Pen">
            <h2 class="stationery-title">Blue Pen</h2>
            <p class="stationery-description">A pen is a writing instrument that applies ink to a surface, typically paper, for drawing or writing.</p>
            <p class="stationery-price">₹10.00</p>
            <a href="details.jsp?id=23" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 4 -->
        <div class="stationery-item">
            <img src="204.jpg" alt="Black Pen">
            <h2 class="stationery-title">Black Pen</h2>
            <p class="stationery-description">A pen is a writing instrument that applies ink to a surface, typically paper, for drawing or writing.</p>
            <p class="stationery-price">₹10.00</p>
            <a href="details.jsp?id=24" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 5 -->
        <div class="stationery-item">
            <img src="205.jpg" alt="Drawing Clips">
            <h2 class="stationery-title">Drawing Clips</h2>
            <p class="stationery-description">Drawing Board Clips are designed for use with drawing boards to hold down drawings without any need for adhesive tapes.</p>
            <p class="stationery-price">₹10.00</p>
            <a href="details.jsp?id=25" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 6 -->
        <div class="stationery-item">
            <img src="206.jpg" alt="Pencil">
            <h2 class="stationery-title">Pencil</h2>
            <p class="stationery-description">A pencil is a writing or drawing tool that contains a solid marking substance, usually graphite, and is encased in a cylinder of wood, metal, or plastic.</p>
            <p class="stationery-price">₹5.00</p>
            <a href="details.jsp?id=26" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 7 -->
        <div class="stationery-item">
            <img src="207.jpg" alt="Eraser">
            <h2 class="stationery-title">Eraser</h2>
            <p class="stationery-description">An eraser is a small piece of rubber or other material used to remove marks from paper, skin, chalkboards, or whiteboards.</p>
            <p class="stationery-price">₹5.00</p>
            <a href="details.jsp?id=27" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 8 -->
        <div class="stationery-item">
            <img src="208.jpg" alt="Sharpener">
            <h2 class="stationery-title">Sharpener</h2>
            <p class="stationery-description">A sharpener is a tool or machine that makes something sharper, such as a pencil or knife.</p>
            <p class="stationery-price">₹4.00</p>
            <a href="details.jsp?id=28" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 9 -->
        <div class="stationery-item">
            <img src="209.jpg" alt="Scientific Calculator">
            <h2 class="stationery-title">Scientific Calculator</h2>
            <p class="stationery-description">A scientific calculator that can perform advanced mathematical calculations, such as trigonometry, logarithms, and exponentials.</p>
            <p class="stationery-price">₹1.00</p>
            <a href="details.jsp?id=29" class="view-details-btn">View Details</a>
        </div>

        <!-- Stationery Item 10 -->
        <div class="stationery-item">
            <img src="210.jpg" alt="A4 Paper">
            <h2 class="stationery-title">A4 Paper</h2>
            <p class="stationery-description">A4 is a paper size that is commonly used for printing, letters, and documents.</p>
            <p class="stationery-price">₹2.00</p>
            <a href="details.jsp?id=30" class="view-details-btn">View Details</a>
        </div>
    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Stationery Items for Students</p>
    </footer>

</body>
</html>
