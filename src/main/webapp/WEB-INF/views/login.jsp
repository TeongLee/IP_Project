<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Display alert if there is an error
        function showAlert(message) {
            alert(message);
        }
    </script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="flex bg-white shadow-lg rounded-lg w-4/5 lg:w-2/3">
        <!-- Login Form -->
        <div class="w-1/2 p-8">
            <div class="text-center mb-6">
                <img src="/assets/login1.png" alt="Logo" class="w-16 mx-auto mb-4">
                <h1 class="text-xl font-bold">WELCOME TO 123LetsGo TVPSS MANAGEMENT INFORMATION SYSTEM</h1>
                <p class="text-gray-600">Login into your account</p>
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

            <form action="/" method="POST" class="space-y-4">
                <select name="role" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                    <option value="" disabled selected>Select role</option>
                    <option value="stateAdmin">State Admin</option>
                    <option value="student">Student</option>
                    <option value="districtSupervisor">District Supervisor</option>
                    <option value="schoolCoordinator">School Coordinator</option>
                </select>
                <input type="email" name="email" placeholder="Email address" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <input type="password" name="password" placeholder="Password" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <a href="/forgotpassword" class="text-sm text-blue-500 hover:underline block text-right">Forgot password?</a>
                <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">Login now</button>
            </form>
            <div class="mt-6 text-center">
                <p class="text-gray-600">Don't have an account?</p>
                <a href="/signup" class="text-blue-500 hover:underline">Sign Up Now</a>
            </div>
        </div>
        <!-- Illustration -->
        <div class="w-1/2 bg-blue-600 hidden lg:flex items-center justify-center">
            <img src="/assets/login2.png" alt="Illustration" class="w-2/3">
        </div>
    </div>

    <%-- Trigger alert if error exists --%>
    <% if (request.getAttribute("error") != null) { %>
        <script>
            showAlert('<%= request.getAttribute("error") %>');
        </script>
    <% } %>
</body>
</html>
