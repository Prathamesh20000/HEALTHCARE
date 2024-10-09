<?php
include 'db_config.php';

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare and bind
    $stmt = $conn->prepare("SELECT Password FROM login WHERE Username = ?");
    $stmt->bind_param("s", $username);

    // Execute the statement
    $stmt->execute();
    $stmt->store_result();

    // Check if user exists
    if ($stmt->num_rows == 1) {
        $stmt->bind_result($hashed_password);
        $stmt->fetch();

        // Verify the password
        if (password_verify($password, $hashed_password)) {
            // Start a session and store user info
            session_start();
            $_SESSION['username'] = $username;

            // Redirect to the success page
            header("Location: success.php");
            exit();
        } else {
            echo "Invalid username or password.";
        }
    } else {
        echo "Invalid username or password.";
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();
}
?>
