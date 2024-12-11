<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="bg-white shadow-lg rounded-lg w-4/5 lg:w-1/3 p-8">
        <div class="text-center mb-6">
            <img src="/assets/login1.png" alt="Logo" class="w-16 mx-auto mb-4">
            <h1 class="text-xl font-bold">Forgot Password</h1>
            <p class="text-gray-600">Enter your email to reset your password</p>
        </div>
        <form action="/forgotpassword" method="POST" class="space-y-4">
            <input type="email" name="email" placeholder="Email address"
                   class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
            <button type="submit"
                    class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">
                Send Reset Link
            </button>
        </form>
        <div class="mt-6 text-center">
            <button onclick="window.location.href='/'"
                    class="w-full bg-gray-200 text-gray-700 py-2 rounded hover:bg-gray-300 transition">
                Back to Login
            </button>
        </div>
        <%-- Display success message if present --%>
        <% if (request.getAttribute("message") != null) { %>
            <div class="mt-4 bg-green-100 text-green-700 p-3 rounded text-center">
                <%= request.getAttribute("message") %>
            </div>
        <% } %>
    </div>
</body>
</html>
