<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Request</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <div class="w-64 bg-white h-screen shadow-md">
            <div class="p-4">
                <h2 class="text-xl font-semibold mb-4">Menu</h2>
                <nav>
                    <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-200 rounded">Dashboard</a>
                    <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-200 rounded">Crew List</a>
                    <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-200 rounded">Content Library</a>
                    <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-200 rounded">Achievements</a>
                    <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-200 rounded">Request Tracking</a>
                </nav>
            </div>
        </div>
        <!-- Main Content -->
        <div class="flex-1 p-6">
            <a href="/school/equipments" class="text-blue-500 underline mb-4 inline-block">&lt; Back</a>
            <h1 class="text-3xl font-bold mb-6">Add Request</h1>
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 bg-white shadow-md p-6 rounded">
                <!-- Left Section -->
                <div class="text-center bg-blue-50 p-6 rounded">
                    <img src="school-logo.png" alt="School Logo" class="w-32 mx-auto mb-4">
                    <h2 class="text-2xl font-bold">SMK TAMAN UNIVERSITI</h2>
                    <p class="text-gray-600">Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru, Johor</p>
                </div>
                <!-- Right Section -->
                <form class="space-y-4">
                    <div>
                        <label class="block font-semibold">Equipment Name</label>
                        <input type="text" class="w-full border-gray-300 rounded p-2" placeholder="Enter equipment name">
                    </div>
                    <div>
                        <label class="block font-semibold">Quantity (optional)</label>
                        <input type="number" class="w-full border-gray-300 rounded p-2" placeholder="Enter quantity">
                    </div>
                    <div>
                        <label class="block font-semibold">Date Required</label>
                        <div class="flex space-x-2">
                            <input type="date" class="w-1/2 border-gray-300 rounded p-2">
                            <input type="date" class="w-1/2 border-gray-300 rounded p-2">
                        </div>
                    </div>
                    <div>
                        <label class="block font-semibold">Urgency Level</label>
                        <select class="w-full border-gray-300 rounded p-2">
                            <option>Low</option>
                            <option>Medium</option>
                            <option>High</option>
                        </select>
                    </div>
                    <div>
                        <label class="block font-semibold">Resource Description</label>
                        <textarea class="w-full border-gray-300 rounded p-2" rows="4" placeholder="Describe the resource requirements"></textarea>
                    </div>
                    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded w-full">Submit</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
