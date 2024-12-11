<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>School List - State</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    // JavaScript for toggling submenus
    function toggleMenu(menuId) {
      const menu = document.getElementById(menuId);
      menu.classList.toggle("hidden");
    }

    // Search functionality
    function searchTable() {
      const input = document.getElementById("searchInput").value.toLowerCase();
      const rows = document.querySelectorAll("#schoolTable tbody tr");

      rows.forEach(row => {
        const resourceName = row.querySelector(".school-name").innerText.toLowerCase();
        row.style.display = resourceName.includes(input) ? "" : "none";
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
      <jsp:include page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp" />
    </aside>

    <!-- Main Content -->
    <div class="flex-1 p-6 mx-6 h-screen">

      <!-- Page Header -->
      <div class="flex justify-between items-center">
        <div class="">
          <h3 class="text-4xl font-bold text-gray-700 mt-2">School List</h3>
          <p class="text-gray-600 mt-2 mb-2">You can see all the schools under your district, use the tools below to
            manage or view the school easily.</p>
          <div class="w-fit px-10 py-2 bg-blue-100 text-sm rounded-full text-[#3111D2] font-medium mb-8">Johor
          </div>
        </div>
      </div>

      <div class="bg-white rounded-2xl p-6 min-h-[80%]">
        <!-- Tab Navigation and Controls -->
        <div class="flex justify-end items-center mb-6">
          <!-- Search and Add Button -->
          <div class="flex items-center space-x-4">
            <!-- Search Bar -->
            <div class="relative w-[30rem]"> <!-- or you can use w-80, w-[32rem] depends on your needs -->
              <input id="searchInput" type="text" oninput="searchTable()" placeholder="Search by School Name..."
                class="w-full px-4 py-2 rounded-lg border border-gray-300 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
              <i class="fas fa-search absolute right-3 top-3 text-gray-400"></i>
            </div>
          </div>
        </div>

        <!-- Table -->
        <div class="bg-white rounded-lg shadow overflow-x-auto">
          <table id="schoolTable" class="min-w-full table-auto divide-y divide-gray-300">
            <thead class="bg-gray-100">
              <tr>
                <th class="px-6 py-4 text-left text-gray-600 font-medium">School ID</th>
                <th class="px-6 py-4 text-center text-gray-600 font-medium school-name">School Name</th>
                <th class="px-6 py-4 text-center text-gray-600 font-medium">Activities Organized</th>
                <th class="px-6 py-4 text-center text-gray-600 font-medium">TVPSS Status</th>
                <th class="px-6 py-4 text-center text-gray-600 font-medium">District</th>
                <th class="px-6 py-4 text-center text-gray-600 font-medium">Action</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-100">
              <!-- Table Rows -->
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID121</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN BATU PAHAT</td>
                <td class="px-6 py-4 text-center text-gray-700">10</td>
                <td class="px-6 py-4 text-center text-gray-700">3</td>
                <td class="px-6 py-4 text-center text-gray-700">BATU PAHAT</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID132</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN SEGAMAT</td>
                <td class="px-6 py-4 text-center text-gray-700">5</td>
                <td class="px-6 py-4 text-center text-gray-700">4</td>
                <td class="px-6 py-4 text-center text-gray-700">SEGAMAT</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID145</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN UNIVERSITI</td>
                <td class="px-6 py-4 text-center text-gray-700">10</td>
                <td class="px-6 py-4 text-center text-gray-700">2</td>
                <td class="px-6 py-4 text-center text-gray-700">JOHOR BAHRU</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID150</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN KLUANG</td>
                <td class="px-6 py-4 text-center text-gray-700">12</td>
                <td class="px-6 py-4 text-center text-gray-700">3</td>
                <td class="px-6 py-4 text-center text-gray-700">KLUANG</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID151</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN JOHOR BAHRU</td>
                <td class="px-6 py-4 text-center text-gray-700">15</td>
                <td class="px-6 py-4 text-center text-gray-700">3</td>
                <td class="px-6 py-4 text-center text-gray-700">JOHOR BAHRU</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 text-[#1890FF]">SID166</td>
                <td class="px-6 py-4 text-gray-700 school-name">SMK TAMAN KULAI</td>
                <td class="px-6 py-4 text-center text-gray-700">12</td>
                <td class="px-6 py-4 text-center text-gray-700">4</td>
                <td class="px-6 py-4 text-center text-gray-700">KULAI</td>
                <td class="px-6 py-4 text-center">
                  <button class="text-[#1890FF] hover:text-blue-800 font-medium">View</button>
                  <span class="mx-2 text-gray-400">|</span>
                  <button class="text-red-600 hover:text-red-800 font-medium">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>

</html>