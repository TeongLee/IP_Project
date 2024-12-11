<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Display alert if there is a message
        function showAlert(message) {
            alert(message);
        }
    </script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="bg-white shadow-lg rounded-lg p-8 w-4/5 lg:w-1/3">
        <div class="text-center mb-6">
            <img src="${pageContext.request.contextPath}/assets/login1.png" alt="Logo" class="w-16 mx-auto mb-4">
            <h1 class="text-xl font-bold">Reset Your Password</h1>
            <p class="text-gray-600">Enter your details to reset your password</p>
        </div>

        <!-- Dynamic Message Section -->
        <% if (request.getAttribute("error") != null) { %>
            <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-2 rounded mb-4">
                <strong>Error:</strong> <%= request.getAttribute("error") %>
            </div>
        <% } %>
        <% if (request.getAttribute("success") != null) { %>
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-2 rounded mb-4">
                <strong>Success:</strong> <%= request.getAttribute("success") %>
            </div>
        <% } %>

        <form action="/forgotpassword" method="POST" class="space-y-4">
            <input type="email" name="email" placeholder="Email address" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
            <input type="password" name="newPassword" placeholder="New Password" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
            <input type="password" name="confirmPassword" placeholder="Confirm New Password" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">Reset Password</button>
        </form>
        <div class="mt-6 text-center">
            <a href="/" class="text-blue-500 hover:underline">Back to Login</a>
        </div>
    </div>

    <%-- Trigger alert if necessary --%>
    <% if (request.getAttribute("success") != null || request.getAttribute("error") != null) { %>
        <script>
            showAlert('<%= request.getAttribute("success") != null ? request.getAttribute("success") : request.getAttribute("error") %>');
        </script>
    <% } %>
</body>
</html>
