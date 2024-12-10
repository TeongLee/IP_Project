<div class="w-64 bg-white shadow-md min-w-[250px] h-full max-h-screen flex flex-col">
  <!-- User Info  fixed left-0 top-0-->
  <div class="p-4 flex items-center border-b">
    <img src="https://cdn-icons-png.flaticon.com/512/5310/5310895.png" alt="Profile Picture"
        class="w-12 h-12 rounded-full mr-3" />
    <div>
        <p class="text-sm text-gray-500">SMK Batu Pahat Best Food</p>
        <h3 class="text-lg text-gray-700">Murid <span class="text-black font-semibold">Bobo</span></h3>
    </div>
</div>

  <!-- Menu Items -->
  <nav class="p-3 h-full flex flex-col justify-between">
    <div>

      <!-- Dashboard -->
      <a href="/student/dashboard"
        class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
        <i class="fas fa-home mr-3"></i>
        Dashboard
      </a>

      <!-- Upload Content -->
      <a href="/student/uploadContent"
        class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
        <i class="fas fa-users mr-3"></i>
        Upload Content
      </a>

      <!-- Submit Application -->
      <a href="/student/submitApplication"
        class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
        <i class="fas fa-solid fa-video mr-3"></i>
        Submit Application
      </a>
    </div>

    <!-- Logout -->
    <a href="/" class="block py-2 px-4 text-red-500 hover:bg-red-100 rounded flex items-center mt-4">
      <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mr-2" fill="none" viewBox="0 0 24 24"
        stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
          d="M9 9l3 3m0 0l-3 3m3-3h8m-2-2a2 2 0 100 4" />
      </svg>
      Logout
    </a>
  </nav>
</div>