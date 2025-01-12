<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Resource</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex justify-center items-center min-h-screen">
        <form action="/stateAdmin/addResource" method="post" class="bg-white p-8 rounded shadow-lg w-96">
            <h2 class="text-xl font-bold mb-4">Add New Resource</h2>
            <div class="mb-4">
                <label class="block font-medium mb-2">Resource Name</label>
                <input type="text" name="resourceName" required class="w-full px-4 py-2 border rounded" />
            </div>
            <div class="mb-4">
                <label class="block font-medium mb-2">Total Quantity</label>
                <input type="number" name="totalQuantity" required class="w-full px-4 py-2 border rounded" />
            </div>
            <div class="mb-4">
                <label class="block font-medium mb-2">Available Quantity</label>
                <input type="number" name="availableQuantity" required class="w-full px-4 py-2 border rounded" />
            </div>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600">
                Add Resource
            </button>
        </form>
    </div>
</body>
</html>
