<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Equipment</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <aside class="w-64">
            <div class="w-64 min-w-[250px] h-full">
                <div class="fixed left-0 top-0 h-full bg-white shadow-lg mr-1">
                    <div class="p-4 flex items-center border-b">
                        <img src="https://cdn-icons-png.flaticon.com/512/5310/5310895.png" alt="Profile Picture"
                            class="w-12 h-12 rounded-full mr-3" />
                        <div>
                            <p class="text-sm text-gray-500">SMK Batu Pahat Best Food</p>
                            <h3 class="text-lg text-gray-700">Cikgu <span class="text-black font-semibold">Batu</span></h3>
                        </div>
                    </div>
                    <nav class="p-4">
                        <!-- Dashboard -->
                        <div>
                            <button onclick="toggleMenu('dashboardMenu')"
                                class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded">
                                <span class="flex items-center">
                                    <i class="fas fa-home mr-3"></i>
                                    Dashboard
                                </span>
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20"
                                    fill="currentColor">
                                    <path fill-rule="evenodd"
                                        d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                            <div id="dashboardMenu" class="ml-6 hidden">
                                <a href="/schoolCoordinator/dashboard"
                                    class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded mb-1">-
                                    Main Dashboard</a>
                                <a href="/schoolCoordinator/activityList"
                                    class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">- Activity List</a>
                            </div>
                        </div>
                        <!-- Crew List -->
                        <a href="/schoolCoordinator/crewList"
                            class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                            <i class="fas fa-users mr-3"></i>
                            Crew List
                        </a>
                        <!-- Crew Application List -->
                        <a href="/schoolCoordinator/crewApplicationList"
                            class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                            <i class="fas fa-clipboard mr-3 ml-1"></i>
                            Crew Application List
                        </a>
                        <!-- Content Library -->
                        <a href="/schoolCoordinator/contentLibrary"
                            class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                            <i class="fas fa-solid fa-video mr-3"></i>
                            Content Library
                        </a>
                        <!-- Request Tracking -->
                        <div>
                            <button onclick="toggleMenu('requestMenu')"
                                class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded my-2">
                                <span class="flex items-center">
                                    <i class="fas fa-tools mr-3"></i>
                                    Request Tracking
                                </span>
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20"
                                    fill="currentColor">
                                    <path fill-rule="evenodd"
                                        d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                                        clip-rule="evenodd" />
                                </svg>
                            </button>
                            <div id="requestMenu" class="ml-6 hidden">
                                <a href="/schoolCoordinator/equipments"
                                    class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded whitespace-nowrap mb-1">-
                                    Resource & Equipment</a>
                                <a href="/schoolCoordinator/version"
                                    class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">- Version Upgrade</a>
                            </div>
                        </div>
                    </nav>
                    <!-- Logout -->
                    <div class="absolute bottom-4 left-0 px-4 w-full">
                        <a href="/" class="block py-2 px-4 text-red-500 hover:bg-red-100 rounded flex items-center w-full">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mr-2" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M9 9l3 3m0 0l-3 3m3-3h8m-2-2a2 2 0 100 4" />
                            </svg>
                            Logout
                        </a>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">
            <!-- Back Link -->
            <div class="mb-4">
                <a href="javascript:history.back()"
                    class="inline-flex items-center text-blue-600 font-semibold hover:underline">
                    <i class="fas fa-arrow-left mr-2"></i>Back
                </a>
            </div>

            <h3 class="text-3xl font-bold mb-3">Add Request</h3>
            <p class="text-gray-600 text-md mb-6">Request for equipment here</p>

            <!-- Message Display -->
            <% if (request.getAttribute("success") != null) { %>
                <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6">
                    <strong>Success:</strong> <%= request.getAttribute("success") %>
                </div>
            <% } %>
            <% if (request.getAttribute("error") != null) { %>
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6">
                    <strong>Error:</strong> <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <!-- Form -->
            <div class="grid grid-cols-[35%_65%] gap-2 bg-white shadow-md p-6 rounded">
                <div class="text-center bg-blue-500 p-6 rounded">
                    <img src="https://upload.wikimedia.org/wikipedia/ms/f/fc/4403026837235l.jpg" alt="School Logo"
                        class="rounded-full w-60 mx-auto mb-8 mt-4">
                    <h2 class="text-3xl font-bold text-white">SMK BATU PAHAT</h2>
                    <div class="text-2xl font-bold rounded my-4 text-white bg-red-600 mx-8">Model 3</div>
                    <p class="text-gray-600 text-lg text-white">Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru,
                        Johor</p>
                </div>
                <form action="/schoolCoordinator/submitEquipmentRequest" method="post" class="space-y-4 px-10">
                    <h2 class="text-3xl font-medium text-center mt-3 mb-6">Request Form</h2>
                    <div>
                        <label class="block font-semibold mb-2">Equipment Name</label>
                        <input type="text" name="equipmentName" class="w-full rounded p-2" required>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Quantity</label>
                        <input type="number" name="quantity" class="w-full rounded p-2" required>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Date Required</label>
                        <div class="flex space-x-2">
                            <input type="date" name="requestStartDate" class="w-1/2 rounded p-2" required>
                            <p class="text-gray-600 text-md mt-2">to</p>
                            <input type="date" name="requestEndDate" class="w-1/2 rounded p-2" required>
                        </div>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Urgency Level</label>
                        <select name="urgencyLevel" class="w-full rounded p-2">
                            <option value="Low">Low</option>
                            <option value="Medium">Medium</option>
                            <option value="High">High</option>
                        </select>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Resource Description</label>
                        <textarea name="resourceDescription" class="w-full rounded p-2" rows="4" required></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit"
                            class="inline-block w-full bg-green-500 text-white py-2 px-4 rounded hover:bg-green-600">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
