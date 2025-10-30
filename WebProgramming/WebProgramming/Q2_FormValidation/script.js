const form = document.getElementById("loginForm");
const errorAlert = document.getElementById("errorAlert");

form.addEventListener("submit", function (event) {
  event.preventDefault(); // Prevent form submission

  // Clear previous error messages
  errorAlert.classList.add("d-none");
  errorAlert.innerHTML = "";

  const email = document.getElementById("email").value.trim();
  const password = document.getElementById("password").value.trim();

  let errors = [];

  // Email regex validation
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    errors.push("Please enter a valid email address.");
  }

  // Password validation: at least 8 characters
  if (password.length < 8) {
    errors.push("Password must be at least 8 characters long.");
  }

  if (errors.length > 0) {
    errorAlert.innerHTML = errors.join("<br>");
    errorAlert.classList.remove("d-none");
  } else {
    // Form is valid - you can submit or handle login here
    alert("Login successful!");
    form.reset(); // Optional: reset the form
  }
});
