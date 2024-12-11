<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="flex bg-white shadow-lg rounded-lg w-4/5 lg:w-2/3">
        <!-- Sign-Up Form -->
        <div class="w-1/2 p-8">
            <div class="text-center mb-6">
                <img src="/assets/login1.png" alt="Logo" class="w-16 mx-auto mb-4">
                <h1 class="text-xl font-bold">CREATE A NEW ACCOUNT</h1>
                <p class="text-gray-600">Fill in the details to register</p>
            </div>
            <form action="/signup" method="POST" class="space-y-4">
                <select name="role" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                    <option value="" disabled selected>Select role</option>
                    <option value="stateAdmin">State Admin</option>
                    <option value="student">Student</option>
                    <option value="districtSupervisor">District Supervisor</option>
                    <option value="schoolCoordinator">School Coordinator</option>
                </select>
                <input type="text" name="name" placeholder="Full Name" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <input type="email" name="email" placeholder="Email address" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <input type="password" name="password" placeholder="Password" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <input type="password" name="confirmPassword" placeholder="Confirm Password" class="block w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-500" required>
                <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition">Sign Up</button>
            </form>
            <div class="mt-6 text-center">
                <button onclick="window.location.href='/'" class="w-full bg-gray-200 text-gray-700 py-2 rounded hover:bg-gray-300 transition">Back to Login</button>
            </div>
        </div>
        <!-- Illustration -->
        <div class="w-1/2 bg-blue-600 hidden lg:flex items-center justify-center">
            <img src="/assets/login2.png" alt="Illustration" class="w-2/3">
        </div>
    </div>
</body>
</html>
