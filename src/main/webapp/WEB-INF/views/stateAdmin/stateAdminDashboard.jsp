<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>State Admin Dashboard</title>
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
      <div class="flex-1 flex flex-col">
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
                      <span class="username font-bold">Encik Ali</span>! Have a
                      great day!
                    </h4>
                    <span
                      class="w-fit px-10 py-1 bg-blue-100 text-sm rounded-full text-[#3111D2] font-medium"
                      >JPN Staff</span
                    >
                  </div>
                </div>
              </div>
              <div class="flex-1 justify-end flex space-x-10 text-center">
                <div class="flex flex-col items-start">
                  <p>Teachers</p>
                  <p class="text-5xl font-bold text-blue-600">1200</p>
                </div>
                <div class="flex flex-col items-start">
                  <p>TVPSS Crew</p>
                  <p class="text-5xl font-bold text-blue-600">6781</p>
                </div>
                <div class="flex flex-col items-start">
                  <p>Students</p>
                  <p class="text-5xl font-bold text-blue-600">595,454</p>
                </div>
              </div>
            </div>
          </div>

          <!-- middle part -->
          <div class="flex gap-4 mb-5">
            <!-- School Request -->
            <section
              class="w-[75%] bg-white p-4 rounded shadow flex flex-col gap-6"
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
              <table class="w-full border-collapse">
                <thead class="bg-gray-100 border">
                  <tr>
                    <th class="p-2 border-r">School</th>
                    <th class="border-r">District</th>
                    <th class="border-r">Request Type</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody class="border text-center">
                  <tr>
                    <td class="p-2 text-left border-r w-[40%]">
                      Sekolah Kebangsaan Seri Ladang
                    </td>
                    <td class="text-center px-2 border-r">Segamat</td>
                    <td class="text-center px-2 border-r">Resource</td>
                    <td class="text-orange-500">Pending</td>
                  </tr>
                  <tr>
                    <td class="p-2 text-left border-r">
                      Sekolah Kebangsaan Kampung Jawa
                    </td>
                    <td class="text-center px-2 border-r">Batu Pahat</td>
                    <td class="text-center px-2 border-r">Version Upgrade</td>
                    <td class="text-orange-500">Pending</td>
                  </tr>
                  <tr>
                    <td class="p-2 text-left border-r">
                      Sekolah Kebangsaan Jelotong
                    </td>
                    <td class="text-center px-2 border-r">Kulai</td>
                    <td class="text-center px-2 border-r">Version Upgrade</td>
                    <td class="text-orange-500">Pending</td>
                  </tr>
                  <tr>
                    <td class="p-2 text-left border-r">
                      Sekolah Kebangsaan Seri Kemajuan
                    </td>
                    <td class="text-center px-2 border-r">Segamat</td>
                    <td class="text-center px-2 border-r">Resource</td>
                    <td class="text-teal-500">Completed</td>
                  </tr>
                  <tr>
                    <td class="p-2 text-left border-r">
                      Sekolah Kebangsaan Seri Maimon
                    </td>
                    <td class="text-center px-2 border-r">Johor Bahru</td>
                    <td class="text-center px-2 border-r">Version Upgrade</td>
                    <td class="text-orange-500">Pending</td>
                  </tr>
                  <tr>
                    <td class="p-2 text-left border-r">
                      Sekolah Kebangsaan Seri Sekawan Desa
                    </td>
                    <td class="text-center px-2 border-r">Kluang</td>
                    <td class="text-center px-2 border-r">Resource</td>
                    <td class="text-teal-500">Completed</td>
                  </tr>
                </tbody>
              </table>
            </section>

            <!-- best video of the month -->
            <section class="w-[25%] bg-white p-4 rounded shadow flex flex-col">
              <div
                class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00"
              >
                <h3 class="text-lg font-medium">Best Video Of The Month</h3>
              </div>
              <div class="flex flex-col flex-1 gap-6 py-6 px-4">
                <div class="w-full flex flex-col gap-4">
                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                      class="rounded-lg w-[180px] object-cover"
                    />
                    <div>
                      <span
                        class="text-blue-600 font-bold text-3xl leading-none block"
                        >20K</span
                      >
                      <span class="font-medium text-lg">Views</span>
                    </div>
                  </div>
                  <div class="w-full flex flex-col">
                    <p>
                      School: <span class="font-semibold">SK Taman Universiti</span>
                    </p>
                    <p>
                      District:
                      <span class="font-semibold">Johor Bahru</span>
                    </p>
                    <p>
                      Category:
                      <span class="font-semibold">Primary School</span>
                    </p>
                  </div>
                </div>

                <div class="w-full flex flex-col gap-4">
                  <div class="w-full items-center flex gap-6">
                    <img
                      src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                      class="rounded-lg w-[180px] object-cover"
                    />
                    <div>
                      <span
                        class="text-blue-600 font-bold text-3xl leading-none block"
                        >30K</span
                      >
                      <span class="font-medium text-lg">Views</span>
                    </div>
                  </div>
                  <div class="w-full flex flex-col">
                    <p>
                      School: <span class="font-semibold">SMK Seri Kembangan</span>
                    </p>
                    <p>
                      District:
                      <span class="font-semibold">Batu Pahat</span>
                    </p>
                    <p>
                      Category:
                      <span class="font-semibold">Secondary School</span>
                    </p>
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
                <div class="flex flex-col">
                  <h3 class="text-lg font-medium">Leaderboard By Activity</h3>
                  <span class="text-[#757575] uppercase text-sm"
                    >Only Show Top 5 Schools</span
                  >
                </div>
                <div class="flex">
                  <button class="border p-2 border-blue-600 text-blue-600">
                    This Month
                  </button>
                  <button class="border p-2">This Week</button>
                </div>
              </div>
              <div class="flex-1 w-full flex flex-col gap-8 px-4">
                <div class="w-full flex justify-between items-center">
                  <div class="flex items-center gap-3">
                    <img
                      src="${pageContext.request.contextPath}/assets/school_logo.png"
                      class="w-[48px] h-auto object-cover"
                    />
                    <h4 class="font-semibold text-xl">SK Taman Batu 6</h4>
                  </div>
                  <div class="flex gap-12">
                    <div class="w-fit">
                      <p class="text-blue-600 font-bold text-3xl leading-none">
                        250
                      </p>
                      <span class="font-semibold text-xl">Activities</span>
                    </div>
                    <img
                      src="${pageContext.request.contextPath}/assets/zoom.png"
                      class="w-[40px] h-auto object-contain cursor-pointer"
                    />
                  </div>
                </div>

                <div class="w-full flex justify-between items-center">
                  <div class="flex items-center gap-3">
                    <img
                      src="${pageContext.request.contextPath}/assets/school_logo.png"
                      class="w-[48px] h-auto object-cover"
                    />
                    <h4 class="font-semibold text-xl">SK Taman Batu 7</h4>
                  </div>
                  <div class="flex gap-12">
                    <div class="w-fit">
                      <p class="text-blue-600 font-bold text-3xl leading-none">
                        220
                      </p>
                      <span class="font-semibold text-xl">Activities</span>
                    </div>
                    <img
                      src="${pageContext.request.contextPath}/assets/zoom.png"
                      class="w-[40px] h-auto object-contain cursor-pointer"
                    />
                  </div>
                </div>

                <div class="w-full flex justify-between items-center">
                  <div class="flex items-center gap-3">
                    <img
                      src="${pageContext.request.contextPath}/assets/school_logo.png"
                      class="w-[48px] h-auto object-cover"
                    />
                    <h4 class="font-semibold text-xl">SK Taman Batu 8</h4>
                  </div>
                  <div class="flex gap-12">
                    <div class="w-fit">
                      <p class="text-blue-600 font-bold text-3xl leading-none">
                        190
                      </p>
                      <span class="font-semibold text-xl">Activities</span>
                    </div>
                    <img
                      src="${pageContext.request.contextPath}/assets/zoom.png"
                      class="w-[40px] h-auto object-contain cursor-pointer"
                    />
                  </div>
                </div>
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
                  <h3 class="text-lg font-medium">Quick Links</h3>
                </div>

                <div class="w-full h-full grid grid-cols-3 gap-4">
                  <a
                    class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                    href="/stateAdmin/activityList"
                  >
                    <img
                      src="${pageContext.request.contextPath}/assets/activities.png"
                      class="w-[60px] h-auto object-cover"
                    />
                    <div class="flex flex-col text-center space-y-2">
                      <h3 class="font-semibold text-xl">
                        School Activity List
                      </h3>
                      <p class="text-sm text-gray-500 leading-tight">
                        Track the activites that organized by each school across the districts
                      </p>
                    </div>
                  </a>
                  <a
                    class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                    href="/stateAdmin/versionUpgrade"
                  >
                    <img
                      src="${pageContext.request.contextPath}/assets/upgrade.png"
                      class="w-[60px] h-auto object-cover"
                    />
                    <div class="flex flex-col text-center space-y-2">
                      <h3 class="font-semibold text-xl">
                        School Version Upgrade
                      </h3>
                      <p class="text-sm text-gray-500 leading-tight">
                        Track the version upgrade request from each school across the districts
                      </p>
                    </div>
                  </a>
                  <a
                    class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                    href="/stateAdmin/resourceRequest"
                  >
                    <img
                      src="${pageContext.request.contextPath}/assets/resource.png"
                      class="w-[60px] h-auto object-cover"
                    />
                    <div class="flex flex-col text-center space-y-2">
                      <h3 class="font-semibold text-xl">
                        School Resource Request
                      </h3>
                      <p class="text-sm text-gray-500 leading-tight">
                        Track the resource request from each school across the districts
                      </p>
                    </div>
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
