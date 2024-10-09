<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Signup | HealthBot</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
 <!-- Main Section with Forms -->
    <div class="container">
        <div class="form-container">
            <!-- Buttons to Switch Between Forms -->
            <div class="form-toggle">
                <button id="login-btn" onclick="showLogin()">Login</button>
                <button id="signup-btn" onclick="showSignup()">Signup</button>
            </div>

            <!-- Login Form -->
            <form id="login-form" class="form" action="login.php" method="post">
                <h2>Login</h2>
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" class="submit-btn">Login</button>
                <p>Don't have an account? <span class="toggle-signup" onclick="showSignup()">Sign up</span></p>
            </form>

            <!-- Signup Form -->
            <form id="signup-form" class="form" action="signup.php" method="post">
                <h2>Signup</h2>
                <input type="text" name="new_username" placeholder="New Username" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="age" placeholder="Age" required>
                <select name="gender" required>
                    <option value="" disabled selected>Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
                <input type="text" name="weight" placeholder="Weight (kg)" required>
                <input type="password" name="new_password" placeholder="New Password" required>
                <input type="password" name="confirm_password" placeholder="Confirm Password" required>
                <button type="submit" class="submit-btn">Signup</button>
                <p>Already have an account? <span class="toggle-login" onclick="showLogin()">Login</span></p>
            </form>
        </div>
    </div>

    <script src="script.js"></script>

</body>
</html>
