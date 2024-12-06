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
        <!-- Sidebar -->
        <div class="w-64 bg-white h-screen shadow-md">
            <!-- User Info -->
            <div class="p-4 flex items-center border-b">
                <img src="profile-picture.jpg" alt="Profile Picture" class="w-12 h-12 rounded-full mr-3">
                <div>
                    <h1 class="text-lg font-semibold">Cikgu Batu</h1>
                    <p class="text-sm text-gray-500">SMK Batu Pahat Best Food</p>
                </div>
            </div>

            <!-- Menu Items -->
            <nav class="p-4">
                <!-- Dashboard -->
                <div>
                    <button onclick="toggleMenu('dashboardMenu')" class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded">
                        <span class="flex items-center">
                            <i class="fas fa-home mr-3"></i>
                            Dashboard
                        </span>
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </button>
                    <div id="dashboardMenu" class="ml-6 hidden">
                        <a href="#" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Main Dashboard</a>
                        <a href="#" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Activities</a>
                    </div>
                </div>

                <!-- Crew List -->
                <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                    <i class="fas fa-users mr-3"></i>
                    Crew List
                </a>

                <!-- Content Library -->
                <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                    <i class="fas fa-solid fa-video mr-3"></i>
                    Content Library
                </a>

                <!-- Achievements -->
                <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                    <i class="fas fa-trophy mr-3"></i>
                    Achievements
                </a>

                <!-- Request Tracking -->
                <div>
                    <button onclick="toggleMenu('requestMenu')" class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded my-2">
                        <span class="flex items-center">
                            <i class="fas fa-tools mr-3"></i>
                            Request Tracking
                        </span>
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </button>
                    <div id="requestMenu" class="ml-6 hidden">
                        <a href="#" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Resource & Equipment</a>
                        <a href="#" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Version Upgrade</a>
                    </div>
                </div>

                <!-- Logout -->
                <a href="#" class="block py-2 px-4 text-red-500 hover:bg-red-100 rounded flex items-center mt-4">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 9l3 3m0 0l-3 3m3-3h8m-2-2a2 2 0 100 4" />
                    </svg>
                    Logout
                </a>
            </nav>
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
