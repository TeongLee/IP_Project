<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Content Library</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <script>
      // JavaScript for toggling submenus
      function toggleMenu(menuId) {
        const menu = document.getElementById(menuId);
        menu.classList.toggle("hidden");
      }
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  </head>
  <body>
    <main
      class="w-full min-h-screen flex items-center justify-between mx-auto bg-gray-50 font-sans"
    >
      <jsp:include
        page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp"
      />
      <div class="flex-1 flex flex-col max-h-screen overflow-y-auto justify-between w-full p-8 gap-6">
        <div class="w-full h-full flex flex-col gap-4 justify-start">
          <h3 class="font-medium text-xl">Content Library</h3>
          <div class="w-full flex relative border">
            <input
              type="text"
              placeholder="Search by name"
              class="w-full py-2 px-3 focus:outline-[#1890FF]"
            />
            <button class="bg-[#1890FF] hover:bg-[#1890FF]/90 transition-all ease-in-out text-white py-2 px-4">
              Search
            </button>
          </div>
        </div>

        <!-- Content Part -->
        <div class="w-full flex flex-col gap-6">
          <!-- Filtering Options -->
          <div class="w-full flex items-center gap-10 bg-white px-4 py-6">
            <span>Category: </span>
            <div class="flex-1 flex w-full items-center gap-8">
              <button>
                All
              </button>
              <button>
                Co-curriculum
              </button>
              <button>
                Workshop
              </button>
              <button>
                Safety
              </button>
            </div>
          </div>

          <div class="w-full grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 auto-rows-auto gap-4">
            <!-- Grid 1 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Minggu Koperasi</h2>
                <p class="line-clamp-1">Bobo w.3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">Just now</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 2 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Aturan Pergerakan Masuk</h2>
                <p class="line-clamp-1">Kimchi Bobo w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">2 days ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 3 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Festival TVPSS</h2>
                <p class="line-clamp-1">Anandmw w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">3 days ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 4 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Episod 11</h2>
                <p class="line-clamp-1">TeongLee w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">1 week ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 5 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Episod 12</h2>
                <p class="line-clamp-1">Adeline Bobo w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">2 weeks ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 6 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Episod 20</h2>
                <p class="line-clamp-1">Chee Huan w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">2 weeks ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 7 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Episod 21</h2>
                <p class="line-clamp-1">Jacky w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">2 weeks ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>

            <!-- Grid 8 -->
            <div class="w-full bg-white shadow-sm">
              <img
                src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                class="object-cover w-full h-1/2"
              />
              <div class="w-full flex flex-col gap-4 text-left p-6">
                <h2 class="font-semibold">Episod 13</h2>
                <p class="line-clamp-1">Sabrina Lim w. 3 other crews</p>
                <div class="w-full flex items-center justify-between">
                  <span class="text-gray-500">2 weeks ago</span>
                  <div class="w-fit flex space-x-[-10px]">
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[2]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[1]"
                    />
                    <img
                      src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                      class="w-8 h-auto z-[0]"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
