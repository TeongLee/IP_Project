<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Equipment List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // Search function
        function searchEquipment() {
            const filter = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#equipmentTable tbody tr");

            rows.forEach(row => {
                const equipmentName = row.querySelector("td").textContent.toLowerCase();
                row.style.display = equipmentName.includes(filter) ? "" : "none";
            });
        }

        // Sorting function
        function sortTable(columnIndex) {
            const table = document.getElementById("equipmentTable");
            const rows = Array.from(table.querySelectorAll("tbody tr"));
            const isAscending = table.dataset.sortOrder === "asc";

            rows.sort((a, b) => {
                const cellA = a.cells[columnIndex].textContent.trim();
                const cellB = b.cells[columnIndex].textContent.trim();
                return isAscending
                    ? cellA.localeCompare(cellB)
                    : cellB.localeCompare(cellA);
            });

            rows.forEach(row => table.querySelector("tbody").appendChild(row));
            table.dataset.sortOrder = isAscending ? "desc" : "asc";
        }

        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }
    </script>
</head>
<body class="bg-gray-50 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">

            <h1 class="text-4xl font-bold text-gray-700 mb-10 mt-2">Resource & Equipment</h1>

            <!-- Page Header -->
            <div class="flex justify-between items-center mb-0">
                <div>
                    <h1 class="text-2xl font-semibold text-gray-700 mb-2">Equipment List</h1>
                    <h1 class="text-sm text-green-700 mb-6">Active Request</h1>
                </div>
                <a href="/schoolCoordinator/requestEquipment" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded flex items-center">
                    <i class="fas fa-plus mr-2"></i> Add Request
                </a>
            </div>

            <!-- Search and Sort Section -->
            <div class="bg-white p-4 rounded shadow mb-6 flex items-center justify-between">
                <div class="flex items-center">
                    <input
                        type="text"
                        id="searchInput"
                        onkeyup="searchEquipment()"
                        placeholder="Search equipment..."
                        class="border border-gray-300 rounded p-2 w-72"
                    />
                </div>
                <div class="flex gap-4">
                    <button onclick="sortTable(4)" class="bg-gray-200 px-4 py-2 rounded shadow text-sm">
                        Sort by Urgency
                    </button>
                    <button onclick="sortTable(5)" class="bg-gray-200 px-4 py-2 rounded shadow text-sm">
                        Sort by Status
                    </button>
                </div>
            </div>

            <!-- Equipment Table -->
            <div class="overflow-x-auto bg-white shadow rounded-lg">
                <table id="equipmentTable" class="table-auto w-full text-left text-gray-700 border-collapse">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="px-6 py-3 text-sm font-semibold">Equipment Name</th>
                            <th class="px-6 py-3 text-sm font-semibold">Quantity</th>
                            <th class="px-6 py-3 text-sm font-semibold">Request Date</th>
                            <th class="px-6 py-3 text-sm font-semibold">Return Date</th>
                            <th class="px-6 py-3 text-sm font-semibold">Urgency Level</th>
                            <th class="px-6 py-3 text-sm font-semibold">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                       <!-- Dynamic Rows (Example) 
                        <c:forEach var="request" items="${equipmentRequests}">
                            <tr class="border-b">
                                <td class="px-6 py-3">${request.equipmentName}</td>
                                <td class="px-6 py-3">${request.quantity}</td>
                                <td class="px-6 py-3">${request.requestStartDate}</td>
                                <td class="px-6 py-3">${request.requestEndDate}</td>
                                <td class="px-6 py-3">
                                    <span class="px-2 py-1 rounded text-white 
                                        ${request.urgencyLevel == 'High' ? 'bg-red-500' : request.urgencyLevel == 'Medium' ? 'bg-yellow-500' : 'bg-green-500'}">
                                        ${request.urgencyLevel}
                                    </span>
                                </td>
                                <td class="px-6 py-3">
                                    <span class="px-2 py-1 rounded text-white 
                                        ${request.status == 'Accept' ? 'bg-green-500' : request.status == 'Reject' ? 'bg-red-500' : 'bg-gray-500'}">
                                        ${request.status}
                                    </span>
                                </td>
                            </tr>
                        </c:forEach>  -->

                        <!-- Example Static Rows -->
                        <tr class="border-b">
                            <td class="px-6 py-3">Projector</td>
                            <td class="px-6 py-3">3</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-red-500">High</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-green-500 text-white">Accept</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Microphone</td>
                            <td class="px-6 py-3">5</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-yellow-500">Medium</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-red-500 text-white">Reject</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Projector</td>
                            <td class="px-6 py-3">3</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-red-500">High</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-green-500 text-white">Accept</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Microphone</td>
                            <td class="px-6 py-3">5</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-yellow-500">Medium</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-red-500 text-white">Reject</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Speakers</td>
                            <td class="px-6 py-3">4</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-red-500">High</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-red-500 text-white">Reject</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Sound Mixer</td>
                            <td class="px-6 py-3">1</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-green-500">Low</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-yellow-500 text-black">Pending</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Extension Cord</td>
                            <td class="px-6 py-3">8</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-yellow-500">Medium</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-green-500 text-white">Active</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Tripod</td>
                            <td class="px-6 py-3">3</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-green-500">Low</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-yellow-500 text-black">Pending</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">Lighting Kit</td>
                            <td class="px-6 py-3">4</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-red-500">High</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-green-500 text-white">Active</span></td>
                        </tr>
                        <tr class="border-b">
                            <td class="px-6 py-3">HDMI Cable</td>
                            <td class="px-6 py-3">10</td>
                            <td class="px-6 py-3">2024-11-01</td>
                            <td class="px-6 py-3">2024-11-05</td>
                            <td class="px-6 py-3"><span class="px-2 py-1 font-bold text-yellow-500">Medium</span></td>
                            <td class="px-6 py-3"><span class="px-2 py-1 rounded bg-red-500 text-white">Reject</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
