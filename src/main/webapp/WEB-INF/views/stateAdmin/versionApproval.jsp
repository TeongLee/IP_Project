<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Version Approval</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      // JavaScript for toggling submenus
      function toggleMenu(menuId) {
        const menu = document.getElementById(menuId);
        menu.classList.toggle("hidden");
      }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
  </head>

  <body class="bg-gray-100">
    <div class="flex min-h-screen">
      <!-- Sidebar -->
      <aside class="w-64">
        <jsp:include
          page="/WEB-INF/views/common/sidebar/stateAdminSidebar.jsp"
        />
      </aside>

      <!-- Main Content -->
      <h3>version approval</h3>
    </div>
  </body>
</html>
