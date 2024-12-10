<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource Allocation Approval</title>
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
        <jsp:include page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 py-8 px-10">
            <!-- Page Header -->
            <h3 class="text-4xl font-bold text-gray-800 mb-8">Allocation Approval</h3>

            <div class="flex justify-between items-center mb-4">
                <h3 class="text-2xl font-semibold text-gray-800">Request List</h3>
                <div>
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600">
                        Johor
                    </button>
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
                            <th class="text-center px-6 py-4 text-gray-600 font-medium border border-gray-300">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Example Rows -->
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Johor Bahru</td>
                            <td class="px-6 py-4">SMK Taman Mutiara Rini 2</td>
                            <td class="px-6 py-4">Camera</td>
                            <td class="text-center px-6 py-4">3</td>
                            <td class="text-center px-6 py-4">2024-12-01</td>
                            <td class="text-center px-6 py-4 text-red-600 font-bold">High</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Batu Pahat</td>
                            <td class="px-6 py-4">Chua Chu Kang Secondary School</td>
                            <td class="px-6 py-4">Tripod</td>
                            <td class="text-center px-6 py-4">5</td>
                            <td class="text-center px-6 py-4">2024-12-02</td>
                            <td class="text-center px-6 py-4 text-yellow-500 font-bold">Medium</td>
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
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="flex justify-between items-center mt-4">
                <div class="text-gray-600 text-sm">
                    Page <span class="font-bold">1</span> of <span class="font-bold">11</span>
                </div>
                <div class="flex space-x-2">
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">&lt;</button>
                    <button class="px-3 py-1 rounded-md bg-blue-600 text-white font-medium">1</button>
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">2</button>
                    <button class="px-3 py-1 rounded-md bg-gray-200 hover:bg-gray-300 text-gray-600">&gt;</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
