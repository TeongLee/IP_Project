<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource Inventory</title>
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
        <div class="flex-1 p-6">
            <!-- Page Header -->
            <div class="flex justify-between items-center mb-6">
                <h3 class="text-2xl font-bold text-gray-800">Resource Inventory</h3>
                <button class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md shadow-md">
                    <i class="fas fa-plus mr-2"></i>Add New
                </button>
            </div>

            <!-- Table -->
            <div class="bg-white rounded-lg shadow overflow-x-auto">
                <table class="min-w-full table-auto">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">#</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Resource Name</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Resource ID</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Quantity</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Available Quantity</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Condition</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- <!-- Sample Data -->
                        <c:forEach var="item" items="${resourceList}">
                            <tr class="hover:bg-gray-50 border-b">
                                <td class="px-6 py-4">${item.id}</td>
                                <td class="px-6 py-4">${item.name}</td>
                                <td class="px-6 py-4">${item.resourceId}</td>
                                <td class="px-6 py-4">${item.quantity}</td>
                                <td class="px-6 py-4">${item.availableQuantity}</td>
                                <td class="px-6 py-4">${item.condition}</td>
                                <td class="px-6 py-4 text-center">
                                    <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                </td>
                            </tr>
                        </c:forEach> --%>

                        <!-- Sample Rows -->
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">01</td>
                            <td class="px-6 py-4">Projector</td>
                            <td class="px-6 py-4">EQP-001</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">Good</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">02</td>
                            <td class="px-6 py-4">Microphone</td>
                            <td class="px-6 py-4">EQP-002</td>
                            <td class="px-6 py-4">5</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">Excellent</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">03</td>
                            <td class="px-6 py-4">Speakers</td>
                            <td class="px-6 py-4">EQP-003</td>
                            <td class="px-6 py-4">2</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">Good</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">04</td>
                            <td class="px-6 py-4">Laptop</td>
                            <td class="px-6 py-4">EQP-004</td>
                            <td class="px-6 py-4">4</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">Good</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">05</td>
                            <td class="px-6 py-4">HDMI Cable</td>
                            <td class="px-6 py-4">EQP-005</td>
                            <td class="px-6 py-4">10</td>
                            <td class="px-6 py-4">3</td>
                            <td class="px-6 py-4">Fair</td>
                            <td class="px-6 py-4 text-center">
                                <button class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                <span class="mx-2 text-gray-400">|</span>
                                <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                            </td>
                        </tr>
                        <!-- Add additional rows as needed -->
                    </tbody>
                </table>
            </div>

            <!-- Pagination -->
            <div class="flex justify-between items-center mt-4">
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
            </div>
        </div>
    </div>
</body>
</html>
