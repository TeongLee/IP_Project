<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TVPSS Version Upgrade</title>
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
</head>

<body class="bg-gray-50 font-sans min-h-screen">

  <div class="flex flex-row">
    <!-- Sidebar -->
    <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

    <!-- Main Content -->
    <div class="flex-1 px-6 lg:px-10 py-6">
      <!-- Back Button -->
      <div class="mb-4">
        <a href="javascript:history.back()" 
           class="inline-flex items-center text-blue-600 font-semibold hover:underline">
          <i class="fas fa-arrow-left mr-2"></i>Back
        </a>
      </div>

      <!-- Page Header -->
      <div class="text-center lg:text-left mb-8">
        <h3 class="text-3xl font-bold text-gray-700">TVPSS Version Upgrade</h3>
        <p class="text-gray-600 mt-2">Fill in the details below to complete the version upgrade process.</p>
      </div>

      <!-- Form Container -->
      <div class="max-w-4xl mx-auto bg-white p-8 rounded-3xl shadow-lg">
        <h3 class="text-2xl text-center font-bold mb-6">Version Upgrade Form</h3>
        <form>
          <!-- Version Upgrade Dropdown -->
          <div class="mb-6">
            <label class="block text-gray-700 font-semibold mb-2">
              <i class="fas fa-layer-group text-blue-500 mr-2"></i>Version Upgrade
            </label>
            <select class="w-full border border-gray-300 rounded-lg p-3 focus:ring-blue-500 focus:border-blue-500">
              <option>Version Upgrade 1</option>
              <option>Version Upgrade 2</option>
              <option>Version Upgrade 3</option>
              <option>Version Upgrade 4</option>
              <option>Version Upgrade 5</option>
            </select>
          </div>

          <!-- Coordinator Input -->
          <div class="mb-6">
            <label class="block text-gray-700 font-semibold mb-2">
              <i class="fas fa-user text-green-500 mr-2"></i>Coordinator
            </label>
            <input 
              type="text" 
              class="w-full border border-gray-300 rounded-lg p-3 focus:ring-green-500 focus:border-green-500" 
              value="Puan Shaliza binti Rahman"
            />
          </div>

          <!-- Date Input -->
          <div class="mb-6">
            <label class="block text-gray-700 font-semibold mb-2">
              <i class="fas fa-calendar-alt text-purple-500 mr-2"></i>Date
            </label>
            <input 
              type="date" 
              class="w-full border border-gray-300 rounded-lg p-3 focus:ring-purple-500 focus:border-purple-500" 
              value="2024-11-07"
            />
          </div>

          <!-- Version Description -->
          <div class="mb-6">
            <label class="block text-gray-700 font-semibold mb-2">
              <i class="fas fa-info-circle text-yellow-500 mr-2"></i>Version Description
            </label>
            <textarea 
              class="w-full border border-gray-300 rounded-lg p-3 focus:ring-yellow-500 focus:border-yellow-500"
              rows="4"
              placeholder="Write your description here..."
            ></textarea>
          </div>

          <!-- File Upload -->
          <div class="mb-6">
            <label class="block text-gray-700 font-semibold mb-2">
              <i class="fas fa-file-upload text-red-500 mr-2"></i>Upload Activity Report (PDF)
            </label>
            <div class="flex items-center">
              <input 
                type="text" 
                class="flex-grow border border-gray-300 rounded-lg p-3 focus:ring-red-500 focus:border-red-500" 
                value="Program_Report.pdf"
                disabled
              />
              <button 
                class="ml-3 px-6 py-3 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition"
              >
                Upload
              </button>
            </div>
          </div>

          <!-- Save Button -->
          <div class="mt-8">
            <button 
              type="submit" 
              class="w-full bg-green-500 text-white py-3 rounded-lg font-semibold hover:bg-green-600 transition"
            >
              Save
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>

</body>

</html>
