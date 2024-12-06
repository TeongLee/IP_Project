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
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/stateAdministratorSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6">
            <!-- Page Header -->
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-2xl font-bold text-gray-800">Allocation Approval</h1>
                <div>
                    <button class="bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-md">
                        Batu Pahat
                        <i class="fas fa-chevron-down ml-2"></i>
                    </button>
                </div>
            </div>

            <!-- Table -->
            <div class="bg-white rounded-lg shadow overflow-x-auto">
                <table class="min-w-full table-auto">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">School</th>
                            <th class="text-left px-6 py-4 text-gray-600 font-medium">Resource</th>
                            <th class="text-center px-6 py-4 text-gray-600 font-medium">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Example Rows -->
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">SMK Taman Mutiara Rini 2</td>
                            <td class="px-6 py-4">Camera</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">Chua Chu Kang Secondary School</td>
                            <td class="px-6 py-4">Tripod</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 border-b">
                            <td class="px-6 py-4">SMK Skudai</td>
                            <td class="px-6 py-4">Speakers</td>
                            <td class="px-6 py-4 text-center">
                                <button class="bg-green-500 hover:bg-green-600 text-white px-3 py-1 rounded-md mr-2">View</button>
                                <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded-md">Delete</button>
                            </td>
                        </tr>
                        <!-- Additional rows can be added here -->
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
