<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TVPSS Version Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    // JavaScript for toggling submenus
    function toggleMenu(menuId) {
      const menu = document.getElementById(menuId);
      menu.classList.toggle('hidden');
    }
  </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-50 font-sans min-h-screen">

  <div class="flex flex-row">
    <!-- Sidebar -->
    <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

    <!-- Main Content -->
    <div class="flex-1 px-6 py-8 mx-4 lg:mx-6">
      <!-- Page Header -->
      <div class="mb-8 text-center lg:text-left">
        <h3 class="text-3xl sm:text-4xl font-bold text-gray-700">Version Upgrade</h3>
        <p class="text-gray-600 mt-2">Upgrade your school's TVPSS version for better features and tools.</p>
      </div>

      <!-- Card Container -->
      <div class="bg-gradient-to-r from-blue-500 to-blue-700 p-6 lg:p-8 rounded-3xl shadow-xl max-w-full lg:max-w-5xl mx-auto">
        <!-- Inner Card -->
        <div class="bg-white rounded-xl p-6 sm:p-8 text-center space-y-6 shadow-lg">
          <!-- Logo and Info Section -->
          <div class="flex flex-col lg:flex-row lg:gap-8 items-center text-center lg:text-left justify-center">
            <!-- School Logo -->
            <div class="flex-shrink-0">
              <img src="https://upload.wikimedia.org/wikipedia/ms/f/fc/4403026837235l.jpg" 
                  alt="School Logo" 
                  class="rounded-full w-32 sm:w-40 lg:w-48 border-4 border-blue-600 shadow-lg mx-auto lg:mx-0">
            </div>

            <!-- School Info -->
            <div class="mt-4 lg:mt-0">
              <h2 class="text-2xl sm:text-4xl font-bold text-gray-900">SMK Batu Pahat Best</h2>
              <p class="text-lg text-gray-600 mt-2">
                Jalan Pendidikan,<br>
                Taman Universiti,<br>
                81300 Johor Bahru, Johor
              </p>
            </div>
          </div>

          <!-- Congratulations Section -->
          <div class="mt-4">
            <h3 class="text-4xl sm:text-5xl font-bold text-blue-600 uppercase">Congratulations!</h3>
          </div>

          <!-- Version and Status Section -->
          <div>
            <p class="text-xl sm:text-2xl text-gray-800">Your current TVPSS Version:</p>
            <p class="text-red-500 text-2xl sm:text-3xl font-extrabold">Level 3</p>
          </div>
          <p class="text-gray-600 text-lg sm:text-xl">
            Upgrade status: <span class="font-bold text-yellow-500">Pending</span>
          </p>

          <!-- Buttons Section -->
          <div class="flex flex-col sm:flex-row justify-center gap-10 mt-6">
            <a href="/schoolCoordinator/upgradeVersion" 
               class="w-full sm:w-auto px-8 py-3 text-lg sm:text-xl text-white bg-green-500 rounded-lg shadow-lg hover:bg-green-600 transition">
              Upgrade Version
            </a>
            <a href="/schoolCoordinator/addActivity" 
               class="w-full sm:w-auto px-8 py-3 text-lg sm:text-xl text-blue-500 bg-blue-100 rounded-lg shadow-lg hover:bg-blue-200 transition">
              Add Activity
            </a>
          </div>
        </div>
      </div>

      <!-- Features Section -->
      <div class="mt-12">
        <h2 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6">Why Upgrade?</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          <!-- Feature Card -->
          <div class="bg-white p-6 rounded-lg shadow-lg hover:shadow-2xl transition">
            <i class="fas fa-chart-line text-blue-600 text-4xl mb-4"></i>
            <h3 class="text-lg font-bold text-gray-800">Improved Performance</h3>
            <p class="text-gray-600 mt-2">Experience faster load times and smoother navigation with the latest updates.</p>
          </div>
          <div class="bg-white p-6 rounded-lg shadow-lg hover:shadow-2xl transition">
            <i class="fas fa-user-friends text-green-600 text-4xl mb-4"></i>
            <h3 class="text-lg font-bold text-gray-800">Enhanced Collaboration</h3>
            <p class="text-gray-600 mt-2">Collaborate seamlessly with advanced tools for teachers and students.</p>
          </div>
          <div class="bg-white p-6 rounded-lg shadow-lg hover:shadow-2xl transition">
            <i class="fas fa-lock text-yellow-600 text-4xl mb-4"></i>
            <h3 class="text-lg font-bold text-gray-800">Top-notch Security</h3>
            <p class="text-gray-600 mt-2">Keep your data secure with cutting-edge encryption and protections.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>

</html>
