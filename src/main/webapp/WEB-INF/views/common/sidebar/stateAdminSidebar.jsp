<!-- Sidebar -->
<div class="w-64 bg-white h-screen shadow-md">
  <!-- User Info -->
  <div class="p-4 flex items-center border-b">
      <img src="https://cdn-icons-png.flaticon.com/512/5310/5310895.png" alt="Profile Picture" class="w-12 h-12 rounded-full mr-3">
      <div>
          <h1 class="text-lg font-semibold">Pejabat Pendidikan</h1>
          <h1 class="text-md ">Negeri Johor</h1>
          <p class="text-sm text-gray-500 mt-1">Encik Ali</p>
      </div>
  </div>

  <!-- Menu Items -->
  <nav class="p-4">

      <!-- Dashboard -->
      <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
          <i class="fas fa-home mr-3"></i>
          Dashboard
      </a>

      <!-- School List -->
      <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
          <i class="fas fa-light fa-school mr-3"></i>
          School List
      </a>

      <!-- Resource Allocation  -->
      <div>
          <button onclick="toggleMenu('requestMenu')" class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded my-2">
              <span class="flex items-center">
                  <i class="fas fa-tools mr-3"></i>
                  Resource Allocation
              </span>
              <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                  <path fill-rule="evenodd" d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
              </svg>
          </button>
          <div id="requestMenu" class="ml-6 hidden">
              <a href="/stateAdmin/inventory" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Inventory</a>
              <a href="/stateAdmin/allocationApproval" class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">Allocation Approval</a>
          </div>
      </div>

      <!-- Version Approval -->
      <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
          <i class="fas fa-solid fa-medal mr-3"></i>
          Version Approval
      </a>

      <!-- Logout -->
      <a href="#" class="block py-2 px-4 text-red-500 hover:bg-red-100 rounded flex items-center mt-4">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 9l3 3m0 0l-3 3m3-3h8m-2-2a2 2 0 100 4" />
          </svg>
          Logout
      </a>
  </nav>
</div>