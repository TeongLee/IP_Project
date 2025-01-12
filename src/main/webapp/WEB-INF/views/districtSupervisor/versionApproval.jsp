<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Version Approval</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // Search function
        function searchSchool() {
            const filter = document.getElementById("searchInput").value.toLowerCase();
            const rows = document.querySelectorAll("#requestTable tbody tr");

            rows.forEach(row => {
                const schoolName = row.querySelector(".school").textContent.toLowerCase();
                row.style.display = schoolName.includes(filter) ? "" : "none";
            });
        }

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
            <p class="text-gray-600 mt-2 mb-10">Review version upgrade requests from schools.</p>

            <!-- Search -->
            <div class="bg-white p-4 rounded-lg shadow-md mb-6 flex items-center">
                <input 
                    id="searchInput" 
                    type="text" 
                    placeholder="Search by school name..." 
                    class="w-full border-gray-300 rounded-md p-2 focus:ring-blue-500 focus:border-blue-500" 
                    oninput="searchSchool()" 
                />
                <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
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
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Description</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Status</th>
                            <th class="px-6 py-4 text-gray-600 font-medium border border-gray-300">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="request" items="${pendingRequests}">
                            <tr class="hover:bg-gray-50 border-b">
                                <td class="px-6 py-4 school">${request.schoolName}</td>
                                <td class="px-6 py-4">${request.coordinatorName}</td>
                                <td class="text-center px-6 py-4">${request.versionName}</td>
                                <td class="text-center px-6 py-4">${request.requestDate}</td>
                                <td class="px-6 py-4">${request.versionDescription}</td>
                                <td class="text-center px-6 py-4 text-yellow-500 font-bold">
                                    <span class="px-2 py-1 rounded text-sm font-semibold
                                                    ${request.status == 'Approved' ? 'bg-green-100 text-green-600' : 
                                                    request.status == 'Rejected' ? 'bg-red-100 text-red-600' : 
                                                    'bg-yellow-100 text-yellow-600'}">
                                                    ${request.status}
                                                </span>
                                </td>
                                <td class="px-6 py-4 text-center flex items-center">
                                    <form action="/districtSupervisor/approveVersionRequest" method="post" class="inline">
                                        <input type="hidden" name="id" value="${request.id}" />
                                        <button type="submit" class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md">Approve</button>
                                    </form>
                                    <form action="/districtSupervisor/rejectVersionRequest" method="post" class="inline ml-2">
                                        <input type="hidden" name="id" value="${request.id}" />
                                        <button type="submit" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Reject</button>
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
