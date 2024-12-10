<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource Allocation Approval</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // JavaScript for filtering and searching
        function filterTable() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const urgencyFilter = document.getElementById("urgencyFilter").value;
            const statusFilter = document.getElementById("statusFilter").value;

            const rows = document.querySelectorAll("tbody tr");

            rows.forEach(row => {
                const schoolName = row.querySelector(".school").textContent.toLowerCase();
                const urgency = row.querySelector(".urgency").textContent;
                const status = row.querySelector(".status").textContent;

                const matchesSearch = schoolName.includes(searchInput);
                const matchesUrgency = urgencyFilter === "All" || urgency === urgencyFilter;
                const matchesStatus = statusFilter === "All" || status === statusFilter;

                if (matchesSearch && matchesUrgency && matchesStatus) {
                    row.classList.remove("hidden");
                } else {
                    row.classList.add("hidden");
                }
            });
        }

        // JavaScript for Modal Popup
        function openModal(rowData) {
            document.getElementById("modal").classList.remove("hidden");
            document.getElementById("modalContent").innerHTML = rowData;
        }

        function closeModal() {
            document.getElementById("modal").classList.add("hidden");
        }

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
        <jsp:include page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">
            <h3 class="text-4xl font-bold text-gray-700 mt-2">Allocation Approval</h3>
            <p class="text-gray-600 mt-2 mb-10">Review allocation request from schools.</p>

            <!-- Page Header -->
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-2xl font-bold text-gray-800">Request List</h1>
                <button class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600">Johor</button>
            </div>

            <!-- Search and Filter -->
            <div class="bg-white p-4 rounded-lg shadow-md mb-6">
                <div class="flex flex-wrap gap-4">
                    <!-- Search -->
                    <div class="flex-1">
                        <input 
                            id="searchInput" 
                            type="text" 
                            placeholder="Search by school name..." 
                            class="w-full border-gray-300 rounded-md p-2 focus:ring-blue-500 focus:border-blue-500" 
                            oninput="filterTable()" 
                        />
                    </div>

                    <!-- Urgency Filter -->
                    <div>
                        <select 
                            id="urgencyFilter" 
                            class="w-full border-gray-300 rounded-md p-2 focus:ring-blue-500 focus:border-blue-500" 
                            onchange="filterTable()"
                        >
                            <option value="All">All Urgency Levels</option>
                            <option value="High">High</option>
                            <option value="Medium">Medium</option>
                            <option value="Low">Low</option>
                        </select>
                    </div>

                    <!-- Status Filter -->
                    <div>
                        <select 
                            id="statusFilter" 
                            class="w-full border-gray-300 rounded-md p-2 focus:ring-blue-500 focus:border-blue-500" 
                            onchange="filterTable()"
                        >
                            <option value="All">All Status</option>
                            <option value="Pending">Pending</option>
                            <option value="Completed">Completed</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Table -->
            <div class="bg-white rounded-lg shadow overflow-x-auto">
                <table class="min-w-full table-auto border-collapse border border-gray-300">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium border border-gray-300">District</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium border border-gray-300">School</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium border border-gray-300">Resource</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Quantity</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Request Date</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Urgency</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Status</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Johor Bahru</td>
                            <td class="px-6 py-4 school">SMK Taman Mutiara Rini 2</td>
                            <td class="px-6 py-4">Camera</td>
                            <td class="text-center px-6 py-4">3</td>
                            <td class="text-center px-6 py-4">2024-12-01</td>
                            <td class="text-center px-6 py-4 urgency text-red-600 font-bold">High</td>
                            <td class="text-center px-6 py-4 status text-yellow-500 font-bold">Pending</td>
                            <td class="px-6 py-4 text-center">
                                <button 
                                    class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2"
                                    onclick="openModal('\
                                        <h2 class=\'font-bold text-3xl mb-4\'>Requester Information</h2>\
                                        <p class=\'text-xl\'> District: Johor Bahru</p>\
                                        <p class=\'text-xl\'> School: SMK Taman Mutiara Rini 2</p>\
                                        <p class=\'text-xl\'> Requester Name: Puan Rahimah</p>\
                                        <h2 class=\'font-bold text-3xl mt-6 mb-4\'>Request Details</h2>\
                                        <p class=\'text-xl\'> Resource: Camera</p>\
                                        <p class=\'text-xl\'> Quantity: 3</p>\
                                        <p class=\'text-xl\'> Request Date: 2024-12-01</p>\
                                        <p class=\'text-xl\'> Return Date: 2024-12-05</p>\
                                        <p class=\'text-xl\'> Description: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias numquam voluptates quis minima dolorum dignissimos! Tenetur in vel voluptas impedit, cum explicabo exercitationem! A nesciunt delectus odio aliquam odit dicta.</p>\
                                        <p class=\'text-xl\'>Urgency: High</p>\
                                    ')">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Batu Pahat</td>
                            <td class="px-6 py-4 school">Chua Chu Kang Secondary School</td>
                            <td class="px-6 py-4">Tripod</td>
                            <td class="text-center px-6 py-4">5</td>
                            <td class="text-center px-6 py-4">2024-12-02</td>
                            <td class="text-center px-6 py-4 urgency text-yellow-500 font-bold">Medium</td>
                            <td class="text-center px-6 py-4 status text-green-600 font-bold">Completed</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Skudai</td>
                            <td class="px-6 py-4">SMK Skudai</td>
                            <td class="px-6 py-4">Speakers</td>
                            <td class="text-center px-6 py-4">2</td>
                            <td class="text-center px-6 py-4">2024-12-03</td>
                            <td class="text-center px-6 py-4 text-green-600 font-bold">Low</td>
                            <td class="text-center px-6 py-4 status text-green-600 font-bold">Completed</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Pontian</td>
                            <td class="px-6 py-4">SMK Bandar Pontian</td>
                            <td class="px-6 py-4">Laptops</td>
                            <td class="text-center px-6 py-4">8</td>
                            <td class="text-center px-6 py-4">2024-12-04</td>
                            <td class="text-center px-6 py-4 text-red-600 font-bold">High</td>
                            <td class="text-center px-6 py-4 status text-yellow-500 font-bold">Pending</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Kulai</td>
                            <td class="px-6 py-4">SMK Kulai Besar</td>
                            <td class="px-6 py-4">Projectors</td>
                            <td class="text-center px-6 py-4">4</td>
                            <td class="text-center px-6 py-4">2024-12-05</td>
                            <td class="text-center px-6 py-4 text-yellow-500 font-bold">Medium</td>
                            <td class="text-center px-6 py-4 status text-green-600 font-bold">Completed</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div id="modal" class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center">
        <div class="bg-white rounded-lg p-10 w-2/3 max-w-3xl relative">
            <button 
                class="absolute top-5 right-10 text-gray-500 hover:text-gray-800"
                onclick="closeModal()"
            >
                <i class="fas fa-times text-2xl"></i>
            </button>
            <div id="modalContent"></div>
            <div class="mt-4 flex justify-end gap-2">
                <button class="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600" onclick="closeModal()">Approve</button>
                <button class="bg-red-500 text-white px-4 py-2 rounded-md hover:bg-red-600" onclick="closeModal()">Deny</button>
            </div>
        </div>
    </div>
</body>
</html>
