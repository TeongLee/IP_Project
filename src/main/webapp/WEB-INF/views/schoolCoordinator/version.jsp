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
</head>
<body class="bg-gray-100 font-sans min-h-screen">

  <div class="flex">
    <!-- Sidebar -->
    <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

    <!-- Main Content -->
    <div class="flex-1 p-6 mx-6">
      <!-- Page Header -->
      <h1 class="text-4xl font-bold text-gray-700 mb-10 mt-2 inline-block">
        Version Upgrade
      </h1>

      <div class="bg-blue-600 p-10 rounded-3xl shadow-lg max-w-7xl w-full">
        <!-- Inner Card -->
        <div class="bg-white rounded-xl p-8 text-center space-y-8 shadow-lg m-6">

          <div class="flex gap-8 justify-center">
            <!-- School Logo -->
            <div class="flex justify-center">
              <img src="https://upload.wikimedia.org/wikipedia/ms/f/fc/4403026837235l.jpg" 
                  alt="School Logo" 
                  class="rounded-full w-50 h-50 border-4 border-blue-600 shadow">
            </div>
      
            <!-- School Info -->
            <div class="text-left">
              <h2 class="text-5xl font-bold text-gray-900 mt-4 mb-6">SMK Batu Pahat Best</h2>
              <p class="text-2xl text-gray-600 leading-relaxed">
                Jalan Pendidikan,<br>
                Taman Universiti,<br>
                81300 Johor Bahru, Johor
              </p>
            </div>
          </div>
    
          <!-- Congratulations Message -->
          <h1 class="text-5xl font-bold text-blue-500 uppercase">Congratulations!</h1>
    
          <!-- Version Info -->
          <div class="text-gray-800">   
            <p class="text-3xl mb-2">Your current TVPSS Version:</p>
            <p class="text-red-500 text-3xl font-extrabold">Level 3</p>
          </div>
    
          <!-- Upgrade Status -->
          <p class="text-gray-600 text-3xl">
            Upgrade status: <span class="font-bold text-yellow-500">Pending</span>
          </p>
    
          <!-- Buttons -->
          <div class="flex justify-center gap-4 ">
              <button class="bg-green-500 w-1/4 text-2xl text-white py-2 px-4 rounded-lg hover:bg-green-600 shadow-md transition">
                <a href="/schoolCoordinator/upgradeVersion">Upgrade Version</a>
              </button>
            <button class="bg-blue-100 w-1/4 text-2xl text-blue-500 py-2 px-4 rounded-lg hover:bg-blue-200 shadow-md transition">
              <a href="#">Add Activity</a>
            </button>
          </div>
        </div>
      </div>
    
    </div>
  </div>

</body>
</html>
