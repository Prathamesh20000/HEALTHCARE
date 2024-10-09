// JavaScript for switching between login and signup forms

function showLogin() {
    const formContainer = document.querySelector('.form-container');
    formContainer.classList.remove('active-signup');
    formContainer.classList.add('active-login');
}

function showSignup() {
    const formContainer = document.querySelector('.form-container');
    formContainer.classList.remove('active-login');
    formContainer.classList.add('active-signup');
}

// By default, show the login form
document.addEventListener("DOMContentLoaded", function() {
    showLogin();
});




// Placeholder JavaScript
console.log("Medical Chatbot Landing Page Loaded.");




function showLogin() {
    document.getElementById('login-form').style.display = 'block';
    document.getElementById('signup-form').style.display = 'none';
}

function showSignup() {
    document.getElementById('signup-form').style.display = 'block';
    document.getElementById('login-form').style.display = 'none';
}




