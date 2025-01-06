<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Allocation Approval</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Text search filter
        function filterTable() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#requestTable tbody tr");

            rows.forEach(row => {
                const resourceName = row.querySelector(".resource-name").innerText.toLowerCase();
                row.style.display = resourceName.includes(searchInput) ? "" : "none";
            });
        }
    </script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6">
            <div class="mb-8">
                <h1 class="text-4xl font-bold text-gray-800">Allocation Approval</h1>
                <p class="text-gray-600 mt-2">Review allocation requests from schools.</p>
            </div>

            <!-- Alerts for Messages -->
            <c:if test="${not empty error}">
                <div class="bg-red-100 text-red-700 border border-red-400 p-4 rounded-md mb-6">
                    <strong>Error:</strong> ${error}
                </div>
            </c:if>
            <c:if test="${not empty message}">
                <div class="bg-green-100 text-green-700 border border-green-400 p-4 rounded-md mb-6">
                    <strong>Success:</strong> ${message}
                </div>
            </c:if>

            <!-- Filters -->
            <div class="flex justify-between mb-6">
                <!-- Text Search -->
                <div class="relative w-1/3">
                    <input
                        type="text"
                        id="searchInput"
                        oninput="filterTable()"
                        placeholder="Search by Resource Name..."
                        value="${param.filter}"
                        class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                </div>

                <!-- Sort Options -->
                <div class="flex space-x-2">
                    <a href="?sort=date&filter=${param.filter}" 
                       class="px-4 py-2 rounded-md hover:bg-gray-300 
                              ${param.sort == 'date' ? 'bg-blue-200 text-blue-700' : 'bg-gray-200 text-gray-700'}">
                        Sort by Date
                    </a>
                    <a href="?sort=urgency&filter=${param.filter}" 
                       class="px-4 py-2 rounded-md hover:bg-gray-300 
                              ${param.sort == 'urgency' ? 'bg-blue-200 text-blue-700' : 'bg-gray-200 text-gray-700'}">
                        Sort by Urgency
                    </a>
                    <a href="?sort=status&filter=${param.filter}" 
                       class="px-4 py-2 rounded-md hover:bg-gray-300 
                              ${param.sort == 'status' ? 'bg-blue-200 text-blue-700' : 'bg-gray-200 text-gray-700'}">
                        Sort by Status
                    </a>
                </div>
            </div>

            <!-- Table Section -->
            <div class="bg-white rounded-lg shadow-lg overflow-x-auto">
                <table id="requestTable" class="min-w-full table-auto border-collapse">
                    <thead class="bg-gray-100 text-gray-600">
                        <tr>
                            <th class="px-6 py-3 text-left text-sm font-medium border border-gray-300">ID</th>
                            <th class="px-6 py-3 text-left text-sm font-medium border border-gray-300">Resource</th>
                            <th class="px-6 py-3 text-center text-sm font-medium border border-gray-300">Quantity</th>
                            <th class="px-6 py-3 text-center text-sm font-medium border border-gray-300">Request Date</th>
                            <th class="px-6 py-3 text-center text-sm font-medium border border-gray-300">Urgency</th>
                            <th class="px-6 py-3 text-center text-sm font-medium border border-gray-300">Status</th>
                            <th class="px-6 py-3 text-center text-sm font-medium border border-gray-300">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty equipmentRequests}">
                                <tr>
                                    <td colspan="7" class="text-center text-gray-500 py-4">No equipment requests available.</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="request" items="${equipmentRequests}">
                                    <tr class="hover:bg-gray-50 border-b">
                                        <td class="px-6 py-4">${request.id}</td>
                                        <td class="px-6 py-4 resource-name">${request.equipmentName}</td>
                                        <td class="px-6 py-4 text-center">${request.quantity}</td>
                                        <td class="px-6 py-4 text-center">${request.requestStartDate}</td>
                                        <td class="px-6 py-4 text-center">
                                            <span class="px-2 py-1 rounded text-sm font-semibold
                                                ${request.urgencyLevel == 'High' ? 'bg-red-100 text-red-600' : 
                                                request.urgencyLevel == 'Medium' ? 'bg-yellow-100 text-yellow-600' : 
                                                'bg-green-100 text-green-600'}">
                                                ${request.urgencyLevel}
                                            </span>
                                                
                                                <td class="px-6 py-4 text-center">
                                                    <span class="px-2 py-1 rounded text-sm font-semibold
                                                    ${request.status == 'Approved' ? 'bg-green-100 text-green-600' : 
                                                    request.status == 'Rejected' ? 'bg-red-100 text-red-600' : 
                                                    'bg-yellow-100 text-yellow-600'}">
                                                    ${request.status}
                                                </span>
                                                

                                        </td>
                                        <td class="px-6 py-4 text-center">
                                            <form action="/stateAdmin/approveRequest" method="post" class="inline">
                                                <input type="hidden" name="id" value="${request.id}" />
                                                <button type="submit" class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md">
                                                    Approve
                                                </button>
                                            </form>
                                            
                                            <form action="/stateAdmin/rejectRequest" method="post" class="inline ml-2">
                                                <input type="hidden" name="id" value="${request.id}" />
                                                <button type="submit" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">
                                                    Reject
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
