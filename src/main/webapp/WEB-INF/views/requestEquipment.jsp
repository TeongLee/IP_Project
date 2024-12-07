<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Request</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }
    </script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Include Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6">
            <a href="/school/equipments" class="text-black-500 mb-4 inline-block">&lt; Back</a>
            <h1 class="text-3xl font-bold mb-3">Add Request</h1>
            <p class="text-gray-600 text-md mb-6">Request for equipment here</p>
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 bg-white shadow-md p-6 rounded ">
                <!-- Left Section -->
                <div class="text-center bg-blue-50 p-6 rounded ">
                    <img src="https://upload.wikimedia.org/wikipedia/ms/f/fc/4403026837235l.jpg" alt="School Logo" class="w-32 mx-auto mb-4 mt-4">
                    <h2 class="text-2xl font-bold">SMK TAMAN UNIVERSITI</h2>
                    <h2 class="text-2xl font-bold rounded my-3 text-red-500">Model 3</h2>
                    <p class="text-gray-600 text-md">Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru, Johor</p>
                </div>
                <!-- Right Section -->
                <form class="space-y-4">
                    <h2 class="text-2xl font-bold text-center mb-6">Request Form</h2>
                    <div>
                        <label class="block font-semibold mb-2">Equipment Name</label>
                        <input type="text" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 " 
                            placeholder="Enter equipment name">
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Quantity (optional)</label>
                        <input type="number" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 " placeholder="Enter quantity">
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Date Required</label>
                        <div class="flex space-x-2">
                            <input type="date" class="w-1/2 outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 ">
                            <p class="text-gray-600 text-md mt-2">to</p>
                            <input type="date" class="w-1/2 outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 ">
                        </div>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Urgency Level</label>
                        <select class="w-full outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 ">
                            <option class="font-semibold text-green-500">Low</option>
                            <option class="font-semibold text-yellow-500">Medium</option>
                            <option class="font-semibold text-red-500">High</option>
                        </select>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Resource Description</label>
                        <textarea class="w-full outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2 " 
                            rows="4" placeholder="Describe the resource requirements here.."></textarea>
                    </div>
                    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded w-full">Submit</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
