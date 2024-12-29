<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Connection Test</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="bg-white p-8 rounded-lg shadow-lg text-center">
        <h1 class="text-2xl font-bold mb-4">Database Connection Test</h1>
        <% if (request.getAttribute("dbStatus") != null) { %>
            <p class="<%= "Database connected successfully!".equals(request.getAttribute("dbStatus")) ? "text-green-500" : "text-red-500" %> text-lg">
                <%= request.getAttribute("dbStatus") %>
            </p>
        <% } else { %>
            <p class="text-gray-500 text-lg">No connection test result available.</p>
        <% } %>
        <a href="/" class="mt-4 inline-block bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-600 transition">Back to Home</a>
    </div>
</body>
</html>
