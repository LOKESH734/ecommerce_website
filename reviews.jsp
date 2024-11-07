<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eaf2f8; /* Light background for a clean look */
        }

        /* Header styling */
        header {
            background-color: #2980b9; /* Header blue color */
            color: white;
            padding: 15px;
            text-align: center;
        }

        /* Main content area */
        .main-content {
            padding: 20px;
            max-width: 800px;
            margin: auto;
        }

        /* Reviews section */
        .review {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 15px;
            margin-bottom: 15px;
        }

        .review h4 {
            color: #2980b9; /* Review title color */
            margin: 0;
        }

        .review p {
            color: #555; /* Review text color */
        }

        .stars {
            color: #f39c12; /* Star color */
        }

        /* Button styling */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            background-color: #3498db; /* Button color */
            color: white;
            border: none;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #2980b9; /* Button hover color */
        }
    </style>
</head>
<body>

<header>
    <h1>Customer Reviews</h1>
</header>

<div class="main-content">
    <!-- Review items -->
    <div class="review">
        <h4>John Doe</h4>
        <div class="stars">★★★★★</div>
        <p>This marketplace has an amazing selection of products! Highly recommend!</p>
    </div>
    <div class="review">
        <h4>Jane Smith</h4>
        <div class="stars">★★★★★</div>
        <p>Fast shipping and great customer service. Will definitely shop here again!</p>
    </div>
    <div class="review">
        <h4>Michael Johnson</h4>
        <div class="stars">★★★★★</div>
        <p>Love the user-friendly interface. It makes shopping so easy!</p>
    </div>
    <div class="review">
        <h4>Emily Davis</h4>
        <div class="stars">★★★★★</div>
        <p>Great prices and a variety of products. I'm impressed!</p>
    </div>
    <div class="review">
        <h4>David Wilson</h4>
        <div class="stars">★★★★★</div>
        <p>Excellent quality on all items I purchased. Highly satisfied!</p>
    </div>
    <div class="review">
        <h4>Sarah Brown</h4>
        <div class="stars">★★★★★</div>
        <p>This is my go-to place for shopping! Love the discounts!</p>
    </div>
    <div class="review">
        <h4>James Garcia</h4>
        <div class="stars">★★★★★</div>
        <p>Fast delivery and easy returns. What more could you ask for?</p>
    </div>
    <div class="review">
        <h4>Linda Martinez</h4>
        <div class="stars">★★★★★</div>
        <p>The customer support team is very helpful and responsive!</p>
    </div>
    <div class="review">
        <h4>Daniel Lee</h4>
        <div class="stars">★★★★★</div>
        <p>Everything I ordered came in perfect condition. 5 stars!</p>
    </div>
    <div class="review">
        <h4>Jessica Taylor</h4>
        <div class="stars">★★★★★</div>
        <p>Great selection of products! I found everything I needed.</p>
    </div>
    <div class="review">
        <h4>Christopher Anderson</h4>
        <div class="stars">★★★★★</div>
        <p>Fantastic shopping experience! Will recommend to friends.</p>
    </div>
    <div class="review">
        <h4>Patricia Thomas</h4>
        <div class="stars">★★★★★</div>
        <p>Items are exactly as described. Very pleased with my purchase!</p>
    </div>
    <div class="review">
        <h4>Thomas Hernandez</h4>
        <div class="stars">★★★★★</div>
        <p>Great site layout and easy navigation. Love it!</p>
    </div>
    <div class="review">
        <h4>Matthew Clark</h4>
        <div class="stars">★★★★★</div>
        <p>Superb customer service! They resolved my issue quickly.</p>
    </div>
    <div class="review">
        <h4>Jennifer Lewis</h4>
        <div class="stars">★★★★★</div>
        <p>Wonderful experience shopping here. I'll be back!</p>
    </div>
    <div class="review">
        <h4>Brian Walker</h4>
        <div class="stars">★★★★★</div>
        <p>I found great deals on items I love. Highly recommended!</p>
    </div>
    <div class="review">
        <h4>Angela Hall</h4>
        <div class="stars">★★★★★</div>
        <p>Fast checkout and delivery. Excellent service overall!</p>
    </div>
    <div class="review">
        <h4>Kevin Allen</h4>
        <div class="stars">★★★★★</div>
        <p>Highly satisfied with my purchase and the quick service!</p>
    </div>
    <div class="review">
        <h4>Elizabeth Young</h4>
        <div class="stars">★★★★★</div>
        <p>Top-notch quality on every item. Will definitely return!</p>
    </div>
    <div class="review">
        <h4>Charles King</h4>
        <div class="stars">★★★★★</div>
        <p>Such a reliable platform! I trust their products completely.</p>
    </div>

    <a href="dashboard.jsp" class="btn">Back to Dashboard</a> <!-- Link to admin dashboard -->
</div>

</body>
</html>
