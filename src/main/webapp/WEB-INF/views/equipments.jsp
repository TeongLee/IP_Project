<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource & Equipment</title>
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
        <!-- Include Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        
        <!-- Main Content -->
        <div class="flex-1 p-6">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-3xl font-bold">Resource & Equipment</h1>
                <a href="/school/requestEquipment" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded">Add Request</a>
            </div>
            <div>
                <h2 class="text-xl font-semibold mb-4">Your Active Request</h2>
                <table class="table-auto w-full bg-white shadow-md rounded border border-gray-200">
                    <thead>
                        <tr class="bg-gray-100 text-left">
                            <th class="px-4 py-2">Equipment Name</th>
                            <th class="px-4 py-2">Quantity</th>
                            <th class="px-4 py-2">Request Date</th>
                            <th class="px-4 py-2">Return Date</th>
                            <th class="px-4 py-2">Urgency Level</th>
                            <th class="px-4 py-2">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="border px-4 py-2">Projector</td>
                            <td class="border px-4 py-2">3</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">High</td>
                            <td class="border px-4 py-2 text-green-500 font-bold">Accept</td>
                        </tr>
                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>

                        <tr>
                            <td class="border px-4 py-2">Microphone</td>
                            <td class="border px-4 py-2">5</td>
                            <td class="border px-4 py-2">2024-11-01</td>
                            <td class="border px-4 py-2">2024-11-05</td>
                            <td class="border px-4 py-2 text-yellow-500 font-bold">Medium</td>
                            <td class="border px-4 py-2 text-red-500 font-bold">Reject</td>
                        </tr>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
