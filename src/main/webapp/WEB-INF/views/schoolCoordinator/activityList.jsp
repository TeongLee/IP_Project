<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // JavaScript for Search functionality
        function searchTable() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#activityTable tbody tr");

            rows.forEach(row => {
                const activityName = row.querySelector(".activity-name").innerText.toLowerCase();
                row.style.display = activityName.includes(input) ? "" : "none";
            });
        }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6 h-screen">
            <!-- Page Header -->
            <div class="flex justify-between items-center">
                <div>
                    <h3 class="text-4xl font-bold text-gray-700 mt-2">Activity List</h3>
                    <p class="text-gray-600 mt-2 mb-8">Track and Manage All Activities at a Glance.</p>
                </div>
                <!-- Add Activity Button -->
                <a href="/schoolCoordinator/addActivity" class="bg-blue-500 text-white font-semibold py-2 px-6 rounded-lg hover:bg-blue-600 transition-colors">
                    + Add Activity
                </a>
            </div>

            <!-- Content Section -->
            <div class="bg-white rounded-2xl p-6 min-h-[80%]">
                <!-- Search -->
                <div class="flex justify-end items-center mb-6">
                    <div class="relative w-[30rem]">
                        <input id="searchInput" 
                               type="text" 
                               oninput="searchTable()"
                               placeholder="Search by Activity Name..."
                               class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
                        <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
                    </div>
                </div>

                <!-- Activity Table -->
                <div class="bg-white rounded-lg shadow overflow-x-auto">
                    <table id="activityTable" class="min-w-full table-auto divide-y divide-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-4 text-left text-gray-600 font-medium">Activity Name</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Start - End Date</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Number of Crews</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Action</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-100">
                            <c:forEach var="activity" items="${activityList}">
                                <tr class="hover:bg-gray-50">
                                    <!-- Activity Name -->
                                    <td class="px-6 py-4 text-[#1890FF] hover:underline activity-name">
                                        ${activity.activityName}
                                    </td>

                                    <!-- Start and End Date -->
                                    <td class="px-6 py-4 text-center text-gray-700">
                                        ${activity.startDate} - ${activity.endDate}
                                    </td>

                                    <!-- Number of Crews -->
                                    <td class="px-6 py-4 text-center text-gray-700">
                                        ${activity.crewCount} <!-- crewCount fetched from the DAO -->
                                    </td>

                                    <!-- Actions -->
                                    <td class="px-6 py-4 text-center">
                                        <form action="/schoolCoordinator/deleteActivity" method="post" class="inline">
                                            <input type="hidden" name="activityId" value="${activity.activityId}" />
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
    </div>
</body>

</html>
