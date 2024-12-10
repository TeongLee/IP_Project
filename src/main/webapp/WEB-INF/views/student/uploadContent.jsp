<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Upload Content</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://kit.fontawesome.com/3c4436f896.js" crossorigin="anonymous"></script>
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
    <aside class="w-64 bg-white shadow">
      <jsp:include page="/WEB-INF/views/common/sidebar/studentSidebar.jsp" />
    </aside>

    <!-- Main Content -->
    <main class="h-screen w-full p-6">
      <div class="w-full mx-auto h-full bg-white  overflow-y-auto  flex flex-col items-center rounded-lg p-8 gap-6">
        <div class="flex flex-col justify-center items-center gap-2.5">
          <img src="${pageContext.request.contextPath}/assets/application.png" alt="logo" class="w-20 h-20" />
          <div class="text-center">
            <h1 class="text-xl font-semibold">Upload Video Content</h1>
            <p class="text-sm text-gray-500">Have created some videos? Share with us now!</p>
          </div>
        </div>

        <!-- Form -->
        <div class="bg-white w-full">
          <form class="w-full grid grid-cols-3 gap-4">
            <!-- Title -->
            <div class="flex flex-col col-span-full gap-2">
              <label for="title" class="font-semibold">Video Title</label>
              <input type="text" name="title" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                placeholder="Give your video a title" />
            </div>

            <!-- URL -->
            <div class="flex flex-col col-span-full gap-2">
              <label for="url" class="font-semibold">Video Link</label>
              <input type="text" name="url" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                placeholder="Paste your link here" />
            </div>

            <!-- Video Thumbnail -->
            <div class="relative w-full col-span-1 flex flex-col gap-2">
              <label for="url" class="font-semibold">Video Thumbnail</label>
              <input type="file" name="document" class="outline-none min-h-[160px] z-10 opacity-0" />
              <!-- File Upload Design That Cover On Top of Original Input -->
              <div
                class="absolute inset-0 w-full h-[150px] flex flex-col items-center justify-center gap-2 border focus:border-blue-600 rounded-lg p-2 mt-8">
                <i class="fas fa-cloud-upload-alt text-4xl text-gray-400"></i>
                <span class="text-gray-400">Drag and drop to upload</span>
              </div>
            </div>

            <!-- Video Description -->
            <div class="flex flex-col col-span-2 gap-2">
              <label for="video_description" class="font-semibold">Video Description</label>
              <textarea name="video_description"
                class="border focus:border-blue-600 outline-none rounded-lg p-2 min-h-[150px]"
                placeholder="Tell us about your video within 30 words"></textarea>
            </div>

            <!-- Recording Date -->
            <div class="flex flex-col col-span-1 gap-2">
              <label for="date" class="font-semibold">Recording Date</label>
              <input type="date" name="date" class="border focus:border-blue-600 outline-none rounded-lg p-2" />
            </div>

            <!-- Role -->
            <div class="flex flex-col col-span-2 gap-2">
              <label for="crew" class="font-semibold">Role</label>
              <select class="border focus:border-blue-600 outline-none rounded-lg p-2">
                <option value="" class="p-2 font-semibold">Select your role in this video</option>
                <option value="Director" class="p-2 hover:bg-blue-100">Director</option>
                <option value="Editor" class="p-2 hover:bg-blue-100">Editor</option>
                <option value="Cameraman" class="p-2 hover:bg-blue-100">Cameraman</option>
                <option value="Actor" class="p-2 hover:bg-blue-100">Actor</option>
                <option value="Script Writer" class="p-2 hover:bg-blue-100">Script Writer</option>
                <option value="Other">Others</option>
              </select>
            </div>

            <!-- Submit Button -->
            <div class="flex flex-col col-span-full gap-2 mt-6">
              <button type="submit"
                class="bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </main>
  </div>
</body>

</html>