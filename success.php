<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Success | HealthBot</title>
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>

    <!-- Main Section -->
    <div class="container">
        <div class="success-message">
            <h1>Login Successful!</h1>
            <p>Welcome back, <?php echo htmlspecialchars($_SESSION['username']); ?>!</p>
            <a href="index.html" class="back-btn">Go to Home</a>
        </div>
    </div>

    <script src="script.js"></script>

</body>
</html>
