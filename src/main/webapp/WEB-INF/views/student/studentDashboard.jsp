<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Student Dashboard</title>
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

</head>

<body class="bg-gray-100">
  <div class="flex min-h-screen">
    <!-- Sidebar -->
    <aside class="w-64 bg-white shadow">
      <jsp:include page="/WEB-INF/views/common/sidebar/studentSidebar.jsp" />
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col overflow-y-auto h-screen">
      <main class="p-8">
        <!-- Dashboard Header -->
        <div class="flex flex-col mb-8 bg-white p-6 rounded-2xl">
          <h2 class="text-xl font-bold mb-4">Main Dashboard</h2>
          <div class="flex justify-between items-center">
            <div>
              <div class="flex">
                <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                  class="rounded-full w-14 h-14 mr-3" alt="Crew Member" />
                <div class="flex flex-col gap-1">
                  <!-- .username will be replaced by the data passed -->
                  <h4 class="text-lg">
                    Good morning,
                    <span class="username font-bold">Bobo</span>! Have a great
                    day!
                  </h4>
                  <span
                    class="w-fit px-10 py-1 bg-blue-100 text-sm rounded-full text-[#3111D2] font-medium">Editor</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- middle part -->
        <div class="flex gap-4 mb-5">
          <!-- Overview -->
          <section class="w-[65%] bg-white p-4 rounded shadow flex flex-col gap-6">
            <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00">
              <h3 class="text-lg font-medium">Overview</h3>
            </div>
            <div class="w-full grid grid-cols-5 grid-rows-2 gap-4">
              <!-- Grid 1 -->
              <div class="col-span-2 flex flex-col items-center justify-center p-4 rounded-lg border gap-3.5">
                <img src="${pageContext.request.contextPath}/assets/resource.png" class="w-12 object-cover" />
                <p class="max-w-[70%] text-center leading-tight">Amazing! You have created <span class="font-bold text-blue-600">5</span> videos this month!</p>
              </div>

              <div class="col-span-2 flex flex-col items-center justify-center p-4 rounded-lg border gap-3.5">
                <img src="${pageContext.request.contextPath}/assets/edit.png" class="w-12 object-cover" />
                <p class="max-w-[70%] text-center leading-tight">Great! You have helped your school to create a total of <span class="font-bold text-blue-600">20</span> videos!</p>
              </div>

              <div class="col-start-5 row-span-full flex flex-col items-center justify-center p-4 rounded-lg border gap-3.5">
                <img src="${pageContext.request.contextPath}/assets/editor.png" class="w-14 object-cover" />
                <div class="flex flex-col gap-1">
                  <p class="text-center leading-tight">You have successfully to become an <span class="font-bold text-teal-600">EDITOR</span> on <span class="font-semibold">21 May 2024</span></p>
                </div>
              </div>

              <div class="col-span-4 flex flex-col items-center justify-center p-4 rounded-lg border gap-2.5">
                <img src="${pageContext.request.contextPath}/assets/award.png" class="w-12 object-cover" />
                <div class="w-full flex flex-col items-center mx-auto space-y-1">
                  <p class="max-w-[70%] text-center leading-tight">Congratulations! You have won <span class="font-bold text-blue-600">2</span> awards this year!</p>
                  <div class="flex items-center gap-3">
                    <span class="text-teal-500 font-semibold">Top Contributor</span>
                    <span>|</span>
                    <span class="text-orange-500 font-semibold">Most Active Crew</span>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <!-- Personal Information -->
          <section class="w-[35%] bg-white p-4 rounded shadow flex flex-col">
            <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00">
              <h3 class="text-lg font-medium">Personal Information</h3>
            </div>
            <div class="flex flex-col flex-1 gap-6 py-6 px-4">
              <div class="w-full flex flex-col gap-6">
                <div class="w-full items-center flex gap-6">
                  <img src="${pageContext.request.contextPath}/assets/user.png" class="w-6 object-cover" />
                  <p class="font-semibold">Lim Bo Yuan</p>
                </div>

                <div class="w-full items-center flex gap-6">
                  <img src="${pageContext.request.contextPath}/assets/email.png" class="w-6 object-cover" />
                  <p class="font-semibold">yuan03@graduate.utm.my</p>
                </div>

                <div class="w-full items-center flex gap-6">
                  <img src="${pageContext.request.contextPath}/assets/contact.png" class="w-6 object-cover" />
                  <p class="font-semibold">012-3456789</p>
                </div>

                <div class="w-full items-center flex gap-6">
                  <img src="${pageContext.request.contextPath}/assets/school.png" class="w-6 object-cover" />
                  <p class="font-semibold">SMK Batu Pahat</p>
                </div>

                <div class="w-full items-center flex gap-6">
                  <img src="${pageContext.request.contextPath}/assets/district.png" class="w-6 object-cover" />
                  <p class="font-semibold">Batu Pahat</p>
                </div>
              </div>
            </div>
          </section>
        </div>

        <!-- bottom part -->
        <div class="flex gap-4">
          <!-- Most Recent Activities -->
          <section class="w-[55%] bg-white p-4 rounded shadow flex flex-col gap-6">
            <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
              <h3 class="text-lg font-medium">Most Recent Activities</h3>
              <a href="/student/activityList" class="text-[#1890FF] hover:underline">All Activities</a>
            </div>
            <div class="flex-1 w-full grid grid-cols-2 gap-6">
              <!-- Grid 1 -->
              <div class="w-full flex flex-col justify-between p-4 hover:bg-slate-50 shadow-md rounded-md transition-colors ease-in-out cursor-pointer">
                <div class="w-fit flex flex-col gap-2">
                  <div class="w-full flex items-center gap-2">
                    <img src="${pageContext.request.contextPath}/assets/activity_logo.png" class="w-6 object-cover" />
                    <h3 class="font-semibold">Karnival Sukan Shooting</h3>
                  </div>
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing</p>
                </div>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500 text-sm">Five Studio</span>
                  <span class="text-gray-400 text-sm">2 days ago</span>
                </div>
              </div>

              <!-- Grid 2 -->
              <div class="w-full flex flex-col justify-between p-4 hover:bg-slate-50 shadow-md rounded-md transition-colors ease-in-out cursor-pointer">
                <div class="w-fit flex flex-col gap-2">
                  <div class="w-full flex items-center gap-2">
                    <img src="${pageContext.request.contextPath}/assets/activity_logo.png" class="w-6 object-cover" />
                    <h3 class="font-semibold">Cara Mengamalkan 3S Di Sekolah</h3>
                  </div>
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing</p>
                </div>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500 text-sm">Five Studio</span>
                  <span class="text-gray-400 text-sm">1 week ago</span>
                </div>
              </div>

              <!-- Grid 3 -->
              <div class="w-full flex flex-col justify-between p-4 hover:bg-slate-50 shadow-md rounded-md transition-colors ease-in-out cursor-pointer">
                <div class="w-fit flex flex-col gap-2">
                  <div class="w-full flex items-center gap-2">
                    <img src="${pageContext.request.contextPath}/assets/activity_logo.png" class="w-6 object-cover" />
                    <h3 class="font-semibold">Hari Koperasi</h3>
                  </div>
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing</p>
                </div>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500 text-sm">Five Studio</span>
                  <span class="text-gray-400 text-sm">5 days ago</span>
                </div>
              </div>

              <!-- Grid 4 -->
              <div class="w-full flex flex-col justify-between p-4 hover:bg-slate-50 shadow-md rounded-md transition-colors ease-in-out cursor-pointer">
                <div class="w-fit flex flex-col gap-2">
                  <div class="w-full flex items-center gap-2">
                    <img src="${pageContext.request.contextPath}/assets/activity_logo.png" class="w-6 object-cover" />
                    <h3 class="font-semibold">Minggu Bahasa Melayu</h3>
                  </div>
                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing</p>
                </div>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500 text-sm">Five Studio</span>
                  <span class="text-gray-400 text-sm">2 weeks ago</span>
                </div>
              </div>
            </div>
          </section>

          <!-- Recently Uploaded Contentd -->
          <section class="w-[45%] flex flex-col gap-4">
            <div class="flex flex-col gap-4 w-full h-full bg-white p-4 rounded shadow">
              <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
                <h3 class="text-lg font-medium">Recently Uploaded Content</h3>
              </div>

              <div class="w-full h-full flex flex-col gap-4">
                <a class="w-full flex items-center justify-between rounded-lg p-4 hover:bg-gray-100 transition-all ease-in-out"
                  href="https://www.youtube.com/watch?v=PZpbHaiMH-k">
                  <div class="flex-1 flex gap-3.5">
                    <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                      class="w-[150px] rounded-lg object-cover" />
                    <div class="flex flex-col">
                      <h3 class="font-semibold text-lg">Episod 5</h3>
                      <span class="text-gray-500">2 days ago</span>
                    </div>
                  </div>
                  <i class="fa-solid fa-ellipsis-vertical"></i>
                </a>

                <a class="w-full flex items-center justify-between rounded-lg p-4 hover:bg-gray-100 transition-all ease-in-out"
                  href="https://www.youtube.com/watch?v=PZpbHaiMH-k">
                  <div class="flex-1 flex gap-3.5">
                    <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                      class="w-[150px] rounded-lg object-cover" />
                    <div class="flex flex-col">
                      <h3 class="font-semibold text-lg">Episod 4</h3>
                      <span class="text-gray-500">5 days ago</span>
                    </div>
                  </div>
                  <i class="fa-solid fa-ellipsis-vertical"></i>
                </a>

                <a class="w-full flex items-center justify-between rounded-lg p-4 hover:bg-gray-100 transition-all ease-in-out"
                  href="https://www.youtube.com/watch?v=PZpbHaiMH-k">
                  <div class="flex-1 flex gap-3.5">
                    <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                      class="w-[150px] rounded-lg object-cover" />
                    <div class="flex flex-col">
                      <h3 class="font-semibold text-lg">Episod 3</h3>
                      <span class="text-gray-500">last week</span>
                    </div>
                  </div>
                  <i class="fa-solid fa-ellipsis-vertical"></i>
                </a>
              </div>
            </div>
          </section>
        </div>
      </main>
    </div>
  </div>
</body>

</html>