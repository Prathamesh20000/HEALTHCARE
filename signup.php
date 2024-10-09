<?php
include 'db_config.php';

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data with validation
    $new_username = $_POST['new_username'] ?? '';
    $email = $_POST['email'] ?? '';
    $age = $_POST['age'] ?? '';
    $gender = $_POST['gender'] ?? '';
    $weight = $_POST['weight'] ?? '';
    $new_password = $_POST['new_password'] ?? '';
    $confirm_password = $_POST['confirm_password'] ?? '';

    // Check if passwords match
    if ($new_password !== $confirm_password) {
        die("Passwords do not match.");
    }

    // Hash the password
    $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);

    // Prepare and bind for the signup table
    $stmt_signup = $conn->prepare("INSERT INTO signup (`New Username`, `Email`, `Age`, `Gender`, `Weight`, `New Password`) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt_signup->bind_param("ssisds", $new_username, $email, $age, $gender, $weight, $hashed_password);

    // Prepare and bind for the login table
    $stmt_login = $conn->prepare("INSERT INTO login (Username, Password) VALUES (?, ?)");
    $stmt_login->bind_param("ss", $new_username, $hashed_password);

    // Execute the statement for signup table
    if ($stmt_signup->execute()) {
        // Execute the statement for login table
        if ($stmt_login->execute()) {
            echo "
            <!DOCTYPE html>
            <html lang='en'>
            <head>
                <meta charset='UTF-8'>
                <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                <title>Registration Successful | HealthBot</title>
                <link rel='stylesheet' href='styles.css'>
                
            </head>
            <body>
                <div class='container'>
                    <div class='success-message'>
                        <h1>Registration Successful!</h1>
                        <p>Welcome, {$new_username}!</p>
                        <a href='index.php' class='back-btn'>Login</a>
                    </div>
                </div>
            </body>
            </html>
            ";
        } else {
            echo "Error adding to login table: " . $stmt_login->error;
        }
    } else {
        echo "Error: " . $stmt_signup->error;
    }

    // Close the statements and connection
    $stmt_signup->close();
    $stmt_login->close();
    $conn->close();
}
?>
