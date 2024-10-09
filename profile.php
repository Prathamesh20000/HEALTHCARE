<?php
session_start();

// Ensure the user is logged in
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

// Include database connection file
require_once 'db_config.php';

// Fetch user details
$username = $_SESSION['username'];
$sql = "SELECT * FROM signup WHERE `New Username` = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

// Close the statement and connection
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile | HealthBot</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f4f7f6;
            color: #333;
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Back to Home Button */
        .back-home-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            margin: 20px;
            transition: background-color 0.3s ease;
        }

        .back-home-button:hover {
            background-color: #0056b3;
        }

        /* Container */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Header Styles */
        header {
            background-color: #1f8fc1;
            padding: 20px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 10;
        }

        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo h1 {
            color: #fff;
            font-size: 24px;
            font-weight: 600;
        }

        .nav-menu {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .nav-menu li {
            margin: 0 15px;
        }

        .nav-menu a {
            text-decoration: none;
            color: #fff;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-menu a:hover {
            color: #ffea8a;
        }

        .cta-button {
            padding: 10px 20px;
            background-color: #ff6f61;
            color: #fff;
            border-radius: 20px;
            font-weight: 600;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .cta-button:hover {
            background-color: #ff4b3a;
            transform: scale(1.05);
        }

        /* Profile Styles */
        .profile {
            background-color: #fff;
            padding: 60px 0;
            text-align: center;
        }

        .profile h2 {
            font-size: 32px;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }

        .profile-details {
            background-color: #f9fafb;
            border-radius: 10px;
            padding: 20px;
            margin: 10px auto;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .profile-details p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }

        .profile-details strong {
            display: block;
            font-size: 20px;
            color: #333;
        }

        /* Footer */
        footer {
            background-color: #1f8fc1;
            padding: 20px 0;
            color: #fff;
            text-align: center;
        }

        .footer-links {
            margin-top: 10px;
        }

        .footer-links a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: #ffea8a;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="logo">
                <h1>HealthBot</h1>
            </div>
            <nav>
                <ul class="nav-menu">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="logout.php" class="cta-button" onclick="return confirm('Are you sure you want to logout?');">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Back to Home Button -->
    <a href="index.html" class="back-home-button">⬅️ Back to Home</a>

    <!-- Profile Section -->
    <section class="profile">
        <div class="container">
            <h2>User Profile</h2>
            <div class="profile-details">
                <p><strong>Username:</strong> <?php echo htmlspecialchars($user['New Username']); ?></p>
                <p><strong>Email:</strong> <?php echo htmlspecialchars($user['Email']); ?></p>
                <p><strong>Age:</strong> <?php echo htmlspecialchars($user['Age']); ?></p>
                <p><strong>Gender:</strong> <?php echo htmlspecialchars($user['Gender']); ?></p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2024 HealthBot. All rights reserved.</p>
            <div class="footer-links">
                <a href="#home">Home</a>
                <a href="#about">About</a>
                <a href="#services">Services</a>
                <a href="#contact">Contact</a>
            </div>
        </div>
    </footer>
</body>
</html>
