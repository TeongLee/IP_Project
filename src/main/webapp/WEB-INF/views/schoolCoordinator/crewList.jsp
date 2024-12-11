<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }

        // Search functionality
        function searchTable() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#crewTable tbody tr");

            rows.forEach(row => {
                const resourceName = row.querySelector(".crew-name").innerText.toLowerCase();
                row.style.display = resourceName.includes(input) ? "" : "none";
            });
        }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <aside class="w-64">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6 h-screen">

            <!-- Page Header -->
            <div class="flex justify-between items-center">
                <div class="">
                    <h3 class="text-4xl font-bold text-gray-700 mt-2">Crew List</h3>
                    <p class="text-gray-600 mt-2 mb-8">All Crew Information in One Place.</p>
                </div>
            </div>

            <div class="bg-white rounded-2xl p-6 min-h-[80%]">
                <!-- Tab Navigation and Controls -->
                <div class="flex justify-between items-center mb-6">
                    <!-- Tab Buttons -->
                    <div class="flex">
                        <button id="permanentBtn" onclick="switchTab('permanent')"
                            class="px-6 py-2 bg-[#1890FF] text-[#1890FF] hover:bg-[#1890FF] text-white">
                            Permanent
                        </button>
                        <a href="/schoolCoordinator/crewApplicationList" id="pendingBtn" onclick="switchTab('pending')"
                            class="px-6 py-2 border border-l-0 border-gray-400 text-black hover:bg-gray-300 hover:text-black">
                            Pending
                        </a>
                    </div>

                    <!-- Search and Add Button -->
                    <div class="flex items-center space-x-4">
                        <!-- Search Bar -->
                        <div class="relative w-[30rem]"> <!-- or you can use w-80, w-[32rem] depends on your needs -->
                            <input id="searchInput" 
                                type="text" 
                                oninput="searchTable()"
                                placeholder="Search by Crew Name..."
                                class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
                            <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
                        </div>
                        <button class="bg-blue-600 text-white px-4 py-2 rounded-md shadow-md hover:bg-blue-700">
                            + Add New
                        </button>
                    </div>
                </div>

                <!-- Table -->
                <div class="bg-white rounded-lg shadow overflow-x-auto">
                    <table id="crewTable"  class="min-w-full table-auto divide-y divide-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-4 text-left text-gray-600 font-medium">Crew ID</th>
                                <th class="px-6 py-4 text-left text-gray-600 font-medium crew-name">Crew Name</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Activities Involved</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Role</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Action</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-100">
                            <!-- Table Rows -->
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 text-[#1890FF]">CID001</td>
                                <td class="px-6 py-4 text-gray-700 crew-name">Huan Huan Cute</td>
                                <td class="px-6 py-4 text-center text-gray-700">10</td>
                                <td class="px-6 py-4 text-center text-gray-700">Cameraman</td>
                                <td class="px-6 py-4 text-center">
                                    <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                </td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 text-[#1890FF]">CID002</td>
                                <td class="px-6 py-4 text-gray-700 crew-name">Jackie Chan</td>
                                <td class="px-6 py-4 text-center text-gray-700">5</td>
                                <td class="px-6 py-4 text-center     text-gray-700">Script Writer</td>
                                <td class="px-6 py-4 text-center">
                                    <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                </td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 text-[#1890FF]">CID003</td>
                                <td class="px-6 py-4 text-gray-700 crew-name">Hadi Imran</td>
                                <td class="px-6 py-4 text-center text-gray-700">10</td>
                                <td class="px-6 py-4 text-center     text-gray-700">Editor</td>
                                <td class="px-6 py-4 text-center">
                                    <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                </td>
                            </tr>
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 text-[#1890FF]">CID004</td>
                                <td class="px-6 py-4 text-gray-700 crew-name">Firrdaus Ali</td>
                                <td class="px-6 py-4 text-center text-gray-700">12</td>
                                <td class="px-6 py-4 text-center     text-gray-700">Actor</td>
                                <td class="px-6 py-4 text-center">
                                    <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

</html>