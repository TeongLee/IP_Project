<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Resource</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex justify-center items-center min-h-screen">
        <form action="/stateAdmin/updateResource" method="post" class="bg-white p-8 rounded shadow-lg w-96">
            <h2 class="text-xl font-bold mb-4">Update Resource</h2>
            <input type="hidden" name="id" value="${resource.id}" />
            <div class="mb-4">
                <label class="block font-medium mb-2">Resource Name</label>
                <input type="text" name="resourceName" value="${resource.resourceName}" required class="w-full px-4 py-2 border rounded" />
            </div>
            <div class="mb-4">
                <label class="block font-medium mb-2">Total Quantity</label>
                <input type="number" name="totalQuantity" value="${resource.totalQuantity}" required class="w-full px-4 py-2 border rounded" />
            </div>
            <div class="mb-4">
                <label class="block font-medium mb-2">Available Quantity</label>
                <input type="number" name="availableQuantity" value="${resource.availableQuantity}" required class="w-full px-4 py-2 border rounded" />
            </div>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600">
                Update Resource
            </button>
        </form>
    </div>
</body>
</html>
