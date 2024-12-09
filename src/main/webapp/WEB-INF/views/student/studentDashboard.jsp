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
                  <img
                    src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                    class="rounded-full w-14 h-14 mr-3"
                    alt="Crew Member"
                  />
                  <div class="flex flex-col gap-1">
                    <!-- .username will be replaced by the data passed -->
                    <h4 class="text-lg">
                      Good morning,
                      <span class="username font-bold">Bobo</span>! Have a great
                      day!
                    </h4>
                    <span
                      class="w-fit px-10 py-1 bg-blue-100 text-sm rounded-full text-[#3111D2] font-medium"
                      >Editor</span
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- middle part -->
          <div class="flex gap-4 mb-5">
            <!-- School Request -->
            <section
              class="w-[65%] bg-white p-4 rounded shadow flex flex-col gap-6"
            >
              <div
                class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00"
              >
                <h3 class="text-lg font-medium">School Requests</h3>
                <a
                  href="/schoolCoordinator/contentLibrary"
                  class="text-[#1890FF] hover:underline"
                  >All Requests</a
                >
              </div>
            </section>

            <!-- Personal Information -->
            <section class="w-[35%] bg-white p-4 rounded shadow flex flex-col">
              <div
                class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00"
              >
                <h3 class="text-lg font-medium">Personal Information</h3>
              </div>
              <div class="flex flex-col flex-1 gap-6 py-6 px-4">
                <div class="w-full flex flex-col gap-4">
                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/user.png"
                      class="w-6 object-cover"
                    />
                    <p class="font-semibold">Lim Bo Yuan</p>
                  </div>

                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/email.png"
                      class="w-6 object-cover"
                    />
                    <p class="font-semibold">yuan03@graduate.utm.my</p>
                  </div>

                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/contact.png"
                      class="w-6 object-cover"
                    />
                    <p class="font-semibold">012-3456789</p>
                  </div>

                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/school.png"
                      class="w-6 object-cover"
                    />
                    <p class="font-semibold">SMK Batu Pahat</p>
                  </div>

                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/district.png"
                      class="w-6 object-cover"
                    />
                    <p class="font-semibold">Batu Pahat</p>
                  </div>
                </div>
              </div>
            </section>
          </div>

          <!-- bottom part -->
          <div class="flex gap-4">
            <!-- Most Recent Activities -->
            <section
              class="w-[55%] bg-white p-4 rounded shadow flex flex-col gap-6"
            >
              <div
                class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300"
              >
                <h3 class="text-lg font-medium">Most Recent Activities</h3>
                <a
                  href="/student/activityList"
                  class="text-[#1890FF] hover:underline"
                  >All Activities</a
                >
              </div>
              <div class="flex-1 w-full flex flex-col gap-8 px-4">

              </div>
            </section>

            <!-- Quick Link Section -->
            <section class="w-[45%] flex flex-col gap-4">
              <div
                class="flex flex-col gap-8 w-full h-full bg-white p-4 rounded shadow"
              >
                <div
                  class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300"
                >
                  <h3 class="text-lg font-medium">Recently Uploaded Content</h3>
                </div>

                <div class="w-full h-full flex flex-col gap-8 px-4">
                  <div class="w-full flex items-center justify-between">
                    <div class="flex-1 flex gap-3.5">
                      <img
                        src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                        class="w-[150px] rounded-lg object-cover"
                      />
                      <div class="flex flex-col">
                        <h3 class="font-semibold text-lg">Episod 5</h3>
                        <span class="text-gray-500">2 days ago</span>
                      </div>
                    </div>
                    <i class="fa-solid fa-ellipsis-vertical"></i>
                  </div>  

                  <div class="w-full flex items-center justify-between">
                    <div class="flex-1 flex gap-3.5">
                      <img
                        src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                        class="w-[150px] rounded-lg object-cover"
                      />
                      <div class="flex flex-col">
                        <h3 class="font-semibold text-lg">Episod 4</h3>
                        <span class="text-gray-500">5 days ago</span>
                      </div>
                    </div>
                    <i class="fa-solid fa-ellipsis-vertical"></i>
                  </div> 

                  <div class="w-full flex items-center justify-between">
                    <div class="flex-1 flex gap-3.5">
                      <img
                        src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                        class="w-[150px] rounded-lg object-cover"
                      />
                      <div class="flex flex-col">
                        <h3 class="font-semibold text-lg">Episod 3</h3>
                        <span class="text-gray-500">last week</span>
                      </div>
                    </div>
                    <i class="fa-solid fa-ellipsis-vertical"></i>
                  </div> 
                </div>
              </div>
            </section>
          </div>
        </main>
      </div>
    </div>
  </body>
</html>
