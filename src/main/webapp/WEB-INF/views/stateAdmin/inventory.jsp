<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource Inventory</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }

        // Search functionality
        function searchTable() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#resourceTable tbody tr");
            
            rows.forEach(row => {
                const resourceName = row.querySelector(".resource-name").innerText.toLowerCase();
                row.style.display = resourceName.includes(input) ? "" : "none";
            });
        }
    </script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">

            <!-- Page Header -->
            <div class="flex justify-between items-center mb-2">
                <div class="">
                    <h3 class="text-4xl font-bold text-gray-700 mt-2">Resource Inventory</h3>
                    <p class="text-gray-600 mt-2 mb-8">Here is your list of resource.</p>
                </div>
            </div>

            <div class="flex justify-between mb-7">
                <!-- Search Bar -->
                <div class="relative max-w-72 flex-1">
                    <input 
                        id="searchInput" 
                        type="text" 
                        oninput="searchTable()" 
                        placeholder="Search by Resource Name..." 
                        class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                    <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
                </div>

                <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md shadow-md">
                    <i class="fas fa-plus mr-2"></i>Add New
                </button>
            </div>
            
            <!-- Table -->
            <div class="bg-white rounded-lg shadow overflow-x-auto">
                <table id="resourceTable" class="min-w-full table-auto divide-y divide-gray-300">
                    <thead class="bg-gray-200">
                        <tr>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">#</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Resource Name</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Resource ID</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">Quantity</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">Available Quantity</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 text-gray-700 text-center">01</td>
                            <td class="px-6 py-4 text-gray-700 resource-name">Projector</td>
                            <td class="px-6 py-4 text-gray-700">EQP-001</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 text-gray-700 text-center">02</td>
                            <td class="px-6 py-4 text-gray-700 resource-name">Microphone</td>
                            <td class="px-6 py-4 text-gray-700">EQP-002</td>
                            <td class="px-6 py-4 text-gray-700 text-center">5</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 text-gray-700 text-center">03</td>
                            <td class="px-6 py-4 text-gray-700 resource-name">Speakers</td>
                            <td class="px-6 py-4 text-gray-700">EQP-003</td>
                            <td class="px-6 py-4 text-gray-700 text-center">2</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 text-gray-700 text-center">04</td>
                            <td class="px-6 py-4 text-gray-700 resource-name">Laptop</td>
                            <td class="px-6 py-4 text-gray-700">EQP-004</td>
                            <td class="px-6 py-4 text-gray-700 text-center">4</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50">
                            <td class="px-6 py-4 text-gray-700 text-center">05</td>
                            <td class="px-6 py-4 text-gray-700 resource-name">HDMI Cable</td>
                            <td class="px-6 py-4 text-gray-700">EQP-005</td>
                            <td class="px-6 py-4 text-gray-700 text-center">10</td>
                            <td class="px-6 py-4 text-gray-700 text-center">3</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            

            <!-- Pagination
            <div class="flex justify-between items-center mt-6">
                <div class="text-gray-600 text-sm">
                    Displaying <select class="border-gray-300 rounded-md shadow-sm">
                        <option>10 items</option>
                        <option>20 items</option>
                        <option>50 items</option>
                    </select>
                </div>
                <div class="flex space-x-2">
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">&lt;</button>
                    <button class="px-3 py-1 rounded-md bg-blue-600 text-white font-medium">1</button>
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">2</button>
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">3</button>
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">&gt;</button>
                </div>
            </div> -->
        </div>
    </div>
</body>
</html>
