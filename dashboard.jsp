<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - SmartCampus Marketplace</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eaf2f8; /* Light background for a clean look */
        }

        /* Dashboard layout */
        .dashboard-container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: #2980b9; /* Sidebar blue color */
            color: white;
            padding: 20px;
        }

        .sidebar h2 {
            text-align: center;
            color: #ecf0f1;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px 10px;
            border-bottom: 1px solid #3498db; /* Lighter border */
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .sidebar ul li a:hover {
            background-color: #1a5276; /* Darker hover color */
            padding-left: 20px;
            transition: 0.3s ease;
        }

        /* Main content area */
        .main-content {
            flex: 1;
            padding: 20px;
        }

        .hero-image {
            width: 100%;
            height: 300px;
            background-image: url('https://source.unsplash.com/featured/?marketplace'); /* Random Unsplash image related to marketplace */
            background-size: cover;
            background-position: center;
            margin-bottom: 20px;
        }

        .content-section {
            margin-bottom: 30px;
        }

        .content-section h3 {
            font-size: 24px;
            color: #2980b9; /* Section heading color */
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            background-color: #3498db; /* Button color */
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #2980b9; /* Button hover color */
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .dashboard-container {
                flex-direction: column;
            }
            .sidebar {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<div class="dashboard-container">
    <!-- Sidebar for navigation -->
    <div class="sidebar">
        <h2>Admin Dashboard</h2>
        <ul>
            <li><a href="admin.jsp">Admin Home</a></li> <!-- Link to admin home page -->
            <li><a href="#transactions">Manage Transactions</a></li>
            <li><a href="#add-products">Add Products</a></li>
            <li><a href="#reviews">View Reviews</a></li>
            <li><a href="deals.jsp">Deals</a></li> <!-- Link to deals page -->
            <li><a href="services.jsp">Services</a></li> <!-- Link to services page -->
            <li><a href="giftcards.jsp">Gift Cards</a></li> <!-- Link to gift cards page -->
            <li><a href="shopdeals.jsp">Shop Deals</a></li> <!-- Link to shop deals page -->
            <li><a href="login.jsp">Logout</a></li> <!-- Logout link -->
        </ul>
    </div>

    <!-- Main content area -->
    <div class="main-content">
        <!-- Hero Image -->
        <div class="hero-image"></div>

        <!-- Manage Transactions Section -->
        <div class="content-section" id="transactions">
            <h3>Manage Transactions</h3>
            <p>Here you can view and manage all transactions made on the platform.</p>
            <a href="transactions.jsp" class="btn">Manage Transactions</a> <!-- Link to manage transactions page -->
        </div>

        <!-- Add Products Section -->
        <div class="content-section" id="add-products">
            <h3>Add Products</h3>
            <p>Use this section to add new products to the marketplace.</p>
            <a href="addProduct.jsp" class="btn">Add New Product</a> <!-- Link to add products page -->
        </div>

        <!-- Reviews Section -->
        <div class="content-section" id="reviews">
            <h3>View Reviews</h3>
            <p>Check reviews and feedback from customers for products.</p>
            <a href="reviews.jsp" class="btn">View Reviews</a> <!-- Link to view reviews page -->
        </div>
    </div>
</div>

</body>
</html>
