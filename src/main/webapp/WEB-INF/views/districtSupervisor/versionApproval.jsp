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
        // function filterTable() {
        //     const searchInput = document.getElementById("searchInput").value.toLowerCase();
        //     const urgencyFilter = document.getElementById("urgencyFilter").value;
        //     const statusFilter = document.getElementById("statusFilter").value;

        //     const rows = document.querySelectorAll("tbody tr");

        //     rows.forEach(row => {
        //         const schoolName = row.querySelector(".school").textContent.toLowerCase();
        //         const urgency = row.querySelector(".urgency").textContent;
        //         const status = row.querySelector(".status").textContent;

        //         const matchesSearch = schoolName.includes(searchInput);
        //         const matchesUrgency = urgencyFilter === "All" || urgency === urgencyFilter;
        //         const matchesStatus = statusFilter === "All" || status === statusFilter;

        //         if (matchesSearch && matchesUrgency && matchesStatus) {
        //             row.classList.remove("hidden");
        //         } else {
        //             row.classList.add("hidden");
        //         }
        //     });
        // }

        // Search function
        function searchSchool() {
            const filter = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#requestTable tbody tr");

            rows.forEach(row => {
                const schoolName = row.querySelector("td").textContent.toLowerCase();
                row.style.display = schoolName.includes(filter) ? "" : "none";
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

        function approveRequest() {
            alert('Request Approved!');
            closeModal();
        }

        function denyRequest() {
            alert('Request Denied.');
            closeModal();
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
        <jsp:include page="/WEB-INF/views/common/sidebar/districtSupervisorSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">
            <h3 class="text-4xl font-bold text-gray-700 mt-2">Version Approval</h3>
            <p class="text-gray-600 mt-2 mb-10">Review version upgrade request from schools.</p>

            <!-- Page Header -->
            <div class="flex justify-between items-center mb-6">
                <h3 class="text-2xl font-bold text-gray-800">Request List</h1>
                <button class="bg-gray-600 text-white px-4 py-2 rounded-md hover:bg-black">Daerah Batu Pahat</button>
            </div>

            <!-- Search and Filter -->
            <div class="bg-white p-4 rounded-lg shadow-md mb-6">
                <div class="flex flex-wrap gap-4">
                    <!-- Search -->
                    <div class="flex-1 relative">
                        <input 
                            id="searchInput" 
                            type="text" 
                            placeholder="Search by school name..." 
                            class="w-full border-gray-300 rounded-md p-2 focus:ring-blue-500 focus:border-blue-500" 
                            onkeyup="searchSchool()" 
                        />
                        <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
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
                <table class="min-w-full table-auto border-collapse border border-gray-300" id="requestTable">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium border border-gray-300">School</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium border border-gray-300">Coordinator</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Version Upgrade</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Request Date</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Status</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4 school">SMK Taman Mutiara Rini 2</td>
                            <td class="px-6 py-4 ">Puan Rohainility</td>
                            <td class="text-center px-6 py-4 ">Version Upgrade 3</td>
                            <td class="text-center px-6 py-4">2024-12-01</td>
                            <td class="text-center px-6 py-4 status text-yellow-500 font-bold">Pending</td>
                            <td class="px-6 py-4 text-center">
                                <button 
                                    class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2"
                                    onclick="openModal('\
                                        <div class=\'text-center border-b border-gray-200 pb-4 mb-6\'>\
                                            <h2 class=\'font-bold text-3xl text-gray-800\'>Requester Information</h2>\
                                        </div>\
                                        <div class=\'grid grid-cols-1 gap-4 sm:grid-cols-2 mb-6\'>\
                                            <p class=\'text-gray-700 text-lg\'><span class=\'font-medium\'>School:</span> SMK Taman Mutiara Rini 2</p>\
                                            <p class=\'text-gray-700 text-lg\'><span class=\'font-medium\'>Coordinator:</span> Puan Rohainility</p>\
                                        </div>\
                                        <div class=\'text-left\'>\
                                            <h3 class=\'font-semibold text-2xl text-gray-800 mb-2\'>Upgrade Details</h3>\
                                            <p class=\'text-gray-700 text-lg\'><span class=\'font-medium\'>Current Version:</span> Version 1</p>\
                                            <p class=\'text-gray-700 text-lg\'><span class=\'font-medium\'>Upgrade Version</span> Version 3</p>\
                                            <p class=\'text-gray-700 text-lg\'><span class=\'font-medium\'>Request Date:</span> 2024-12-01</p>\
                                            <p class=\'text-gray-700 text-lg mt-4\'><span class=\'font-medium\'>Description:</span> Bersama kita menjulang, Keunggulan terbilang, Ke mercu jaya kita usaha, UTM puncak letaknya</p>\
                                        </div>\
                                    ')">
                                    View
                                </button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4 school">Chua Chu Kang Secondary School</td>
                            <td class="px-6 py-4">Puan Sarina</td>
                            <td class="text-center px-6 py-4">Version Upgrade 4</td>
                            <td class="text-center px-6 py-4">2024-12-02</td>
                            <td class="text-center px-6 py-4 status text-green-600 font-bold">Completed</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">SMK Skudai</td>
                            <td class="px-6 py-4">Encik Sambal</td>
                            <td class="text-center px-6 py-4">Version Upgrade 5</td>
                            <td class="text-center px-6 py-4">2024-12-03</td>
                            <td class="text-center px-6 py-4 status text-green-600 font-bold">Completed</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">SMK Bandar Pontian</td>
                            <td class="px-6 py-4">Puan Sabrina</td>
                            <td class="text-center px-6 py-4 ">Version Upgrade 2</td>
                            <td class="text-center px-6 py-4">2024-12-04</td>
                            <td class="text-center px-6 py-4 status text-yellow-500 font-bold">Pending</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">SMK Kulai Besar</td>
                            <td class="px-6 py-4">Encik Batu Ferringi</td>
                            <td class="text-center px-6 py-4 ">Version Upgrade 4</td>
                            <td class="text-center px-6 py-4">2024-12-05</td>
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
    <div id="modal" class="fixed inset-0 bg-black bg-opacity-50 hidden flex items-center justify-center z-50">
        <div class="bg-white rounded-lg p-6 w-4/5 max-w-2xl shadow-lg relative">
            <!-- Close Button -->
            <button 
                class="absolute top-4 right-4 text-gray-600 hover:text-gray-900 focus:outline-none"
                onclick="closeModal()"
            >
                <i class="fas fa-times text-2xl"></i>
            </button>

            <!-- Modal Content -->
            <div id="modalContent">
            </div>

            <!-- Action Buttons -->
            <div class="mt-6 flex justify-center gap-3 ">
                <button 
                    class="bg-green-500 text-white font-medium px-6 py-2 rounded-lg hover:bg-green-600 transition-all"
                    onclick="approveRequest()"
                >
                    Approve
                </button>
                <button 
                    class="bg-red-500 text-white font-medium px-6 py-2 rounded-lg hover:bg-red-600 transition-all"
                    onclick="denyRequest()"
                >
                    Deny
                </button>
            </div>
        </div>
    </div>
</body>
</html>
