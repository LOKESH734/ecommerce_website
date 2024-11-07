<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #002147;
            color: white;
            padding: 1rem 0;
            text-align: center;
            font-size: 24px;
        }
        .books-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .book-item {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 15px;
            width: 300px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
        }
        .book-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .book-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: opacity 0.3s ease;
        }
        .book-item:hover img {
            opacity: 0.9;
        }
        .book-details {
            padding: 15px;
            text-align: center;
        }
        .book-title {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }
        .book-price {
            font-size: 16px;
            color: #4CAF50;
            margin: 5px 0;
        }
        .book-description {
            font-size: 14px;
            color: #666;
        }
        .view-details-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .view-details-btn:hover {
            background-color: #45a049;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #002147;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>Book Collection</h1>
    </header>

    <section class="books-container">
        <!-- Book Item 1 -->
        <div class="book-item">
            <img src="img3.jpg" alt="Data Structures Book">
            <div class="book-details">
                <h2 class="book-title">Data Structures</h2>
                <p class="book-description">A comprehensive book that covers arrays, strings, queues, trees, and graphs using C programming.</p>
                <p class="book-price">₹300.00</p>
                <a href="details.jsp?id=1" class="view-details-btn">View Details</a>
            </div>
        </div>

        <!-- Book Item 2 -->
        <div class="book-item">
            <img src="121.jpg" alt="C++ Book">
            <div class="book-details">
                <h2 class="book-title">C++ Programming</h2>
                <p class="book-description">A C++ book that covers object-oriented programming and advanced topics.</p>
                <p class="book-price">₹320.00</p>
                <a href="details.jsp?id=2" class="view-details-btn">View Details</a>
            </div>
        </div>

        <!-- Book Item 3 -->
        <div class="book-item">
            <img src="11.jpg" alt="Java Course">
            <div class="book-details">
                <h2 class="book-title">Java Course</h2>
                <p class="book-description">Comprehensive Java course material, perfect for beginner and advanced learners alike.</p>
                <p class="book-price">₹9,000.00</p>
                <a href="details.jsp?id=3" class="view-details-btn">View Details</a>
            </div>
        </div>

        <!-- Book Item 4 -->
        <div class="book-item">
            <img src="169.jpg" alt="Mechanical Engineering Dynamics">
            <div class="book-details">
                <h2 class="book-title">Mechanical Engineering Dynamics</h2>
                <p class="book-description">A guide on the principles of dynamics, essential for mechanical engineering students.</p>
                <p class="book-price">₹6,500.00</p>
                <a href="details.jsp?id=4" class="view-details-btn">View Details</a>
            </div>
        </div>

        <!-- Book Item 5 -->
        <div class="book-item">
            <img src="170.jpg" alt="BEE - Electrical Circuits">
            <div class="book-details">
                <h2 class="book-title">Fundamentals of Electrical Circuits</h2>
                <p class="book-description">By Charles K. Alexander and Matthew N.O. Sadiku, a must-read for electrical engineers.</p>
                <p class="book-price">₹500.00</p>
                <a href="details.jsp?id=5" class="view-details-btn">View Details</a>
            </div>
        </div>

        <!-- Add more book items similarly -->

    </section>

    <footer>
        <p>© 2024 SmartCampus Marketplace | Discover Your Next Read</p>
    </footer>

</body>
</html>
