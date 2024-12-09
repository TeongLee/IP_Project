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

      <div>
        <form action="">
          
        </form>
      </div>
      
    
    </div>
  </div>

</body>
</html>
