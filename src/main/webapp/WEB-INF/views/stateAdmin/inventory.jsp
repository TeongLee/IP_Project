<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div>
                    <h3 class="text-4xl font-bold text-gray-700 mt-2">Resource Inventory</h3>
                    <p class="text-gray-600 mt-2 mb-8">Here is your list of resources.</p>
                </div>
            </div>

            <!-- Notification Messages -->
            <c:if test="${not empty error}">
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6">
                    <p>${error}</p>
                </div>
            </c:if>
            <c:if test="${not empty success}">
                <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6">
                    <p>${success}</p>
                </div>
            </c:if>

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

                <a href="/stateAdmin/addResourceForm" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md shadow-md">
                    <i class="fas fa-plus mr-2"></i>Add New
                </a>
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
                        <c:forEach var="resource" items="${resources}">
                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 text-gray-700 text-center">${resource.id}</td>
                                <td class="px-6 py-4 text-gray-700 resource-name">${resource.resourceName}</td>
                                <td class="px-6 py-4 text-gray-700">${resource.resourceCode}</td>
                                <td class="px-6 py-4 text-gray-700 text-center">${resource.totalQuantity}</td>
                                <td class="px-6 py-4 text-gray-700 text-center">${resource.availableQuantity}</td>
                                <td class="px-6 py-4 text-center">
                                    <form action="/stateAdmin/updateResourceForm" method="get" style="display:inline;">
                                        <input type="hidden" name="id" value="${resource.id}">
                                        <button type="submit" class="text-blue-600 hover:text-blue-800 font-medium">Update</button>
                                    </form>
                                    <span class="mx-2 text-gray-400">|</span>
                                    <form action="/stateAdmin/deleteResource" method="post" style="display:inline;">
                                        <input type="hidden" name="id" value="${resource.id}">
                                        <button type="submit" class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>
