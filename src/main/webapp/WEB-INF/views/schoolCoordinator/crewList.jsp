<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew List</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function searchTable() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#crewTable tbody tr");

            rows.forEach(row => {
                const crewName = row.querySelector(".crew-name")?.innerText.toLowerCase() || "";
                row.style.display = crewName.includes(input) ? "" : "none";
            });
        }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <aside class="w-64 bg-white shadow">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6 h-screen">
            <!-- Page Header -->
            <div class="flex justify-between items-center">
                <div>
                    <h3 class="text-4xl font-bold text-gray-700 mt-2">Crew List</h3>
                    <p class="text-gray-600 mt-2 mb-8">View and manage your permanent crew information.</p>
                </div>
            </div>

            <div class="bg-white rounded-2xl p-6 min-h-[80%]">
                <!-- Tabs and Search -->
                <div class="flex justify-between items-center mb-6">
                    <!-- Tabs -->
                    <div class="flex space-x-2">
                        <a href="/schoolCoordinator/crewList"
                            class="px-6 py-2 bg-blue-600 text-white rounded-l-lg">
                            Permanent Crew
                        </a>
                        <a href="/schoolCoordinator/crewApplicationList"
                            class="px-6 py-2 border border-gray-300 bg-gray-100 text-gray-700 rounded-r-lg hover:bg-gray-200">
                            Pending Applications
                        </a>
                    </div>

                    <!-- Search -->
                    <div class="relative w-[30rem]">
                        <input id="searchInput" 
                            type="text" 
                            oninput="searchTable()" 
                            placeholder="Search by Crew Name..." 
                            class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
                        <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
                    </div>
                </div>

                <!-- Table -->
                <div class="bg-white rounded-lg shadow overflow-x-auto">
                    <table id="crewTable" class="min-w-full table-auto divide-y divide-gray-300">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="px-6 py-4 text-left text-gray-600 font-medium">Crew ID</th>
                                <th class="px-6 py-4 text-left text-gray-600 font-medium crew-name">Crew Name</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Position</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Video Link</th>
                                <th class="px-6 py-4 text-center text-gray-600 font-medium">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${empty crewList}">
                                    <tr>
                                        <td colspan="5" class="text-center text-gray-500 py-4">No crew members available.</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="crew" items="${crewList}">
                                        <tr class="hover:bg-gray-50">
                                            <td class="px-6 py-4 text-gray-600">${crew.id}</td>
                                            <td class="px-6 py-4 text-gray-700 crew-name">${crew.name}</td>
                                            <td class="px-6 py-4 text-center text-gray-700">${crew.position}</td>
                                            <td class="px-6 py-4 text-center">
                                                <a href="${crew.videoLink}" target="_blank" class="text-blue-500 hover:underline">View Video</a>
                                            </td>
                                            <td class="px-6 py-4 text-center">
                                                <form action="/schoolCoordinator/removeCrewMember" method="post" style="display:inline;">
                                                    <input type="hidden" name="id" value="${crew.id}" />
                                                    <button type="submit" class="text-red-600 hover:text-red-800 font-medium">Remove</button>
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
    </div>
</body>

</html>
