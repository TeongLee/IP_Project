<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Coordinator Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Sidebar toggle for mobile
        function toggleSidebar() {
            const sidebar = document.getElementById("mobileSidebar");
            sidebar.classList.toggle("hidden");
        }
    </script>
</head>
<body class="bg-gray-100">
    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="hidden md:block w-64 bg-white shadow">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Mobile Sidebar -->
        <div id="mobileSidebar" class="fixed top-0 left-0 z-40 h-screen w-64 bg-white shadow-md hidden md:hidden">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </div>

        <!-- Main Content -->
        <div class="flex-1 flex flex-col">
            <!-- Mobile Header -->
            <header class="bg-white shadow p-4 flex items-center justify-between md:hidden">
                <button onclick="toggleSidebar()" class="text-gray-600">
                    <i class="fas fa-bars"></i>
                </button>
                <h1 class="text-lg font-bold">Dashboard</h1>
            </header>

            <main class="p-6">
                <!-- Dashboard Header -->
                <div class="flex justify-between items-center">
                    <div>
                        <h1 class="text-2xl font-bold">Good morning, Cikgu Batu! Have a great day!</h1>
                        <span class="inline-block mt-1 px-3 py-1 bg-blue-100 text-blue-600 text-sm rounded-full">Level 4</span>
                    </div>
                    <div class="flex space-x-8 text-center">
                        <div>
                            <p class="text-2xl font-bold text-blue-600">35</p>
                            <p>Teachers</p>
                        </div>
                        <div>
                            <p class="text-2xl font-bold text-blue-600">12</p>
                            <p>TVPSS Crew</p>
                        </div>
                        <div>
                            <p class="text-2xl font-bold text-blue-600">1560</p>
                            <p>Students</p>
                        </div>
                    </div>
                </div>

                <!-- Most Recent Activities -->
                <section class="mt-8">
                    <h2 class="text-xl font-bold mb-4">Most Recent Activities</h2>
                    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4">
                        <div class="bg-white p-4 rounded shadow">
                            <h3 class="font-bold text-gray-800">Karnival Sukan Shooting</h3>
                            <p class="text-sm text-gray-500 mt-2">Lorem aliquet est risus pretium cursus.</p>
                            <p class="text-xs text-gray-400 mt-2">3 days ago</p>
                        </div>
                        <div class="bg-white p-4 rounded shadow">
                            <h3 class="font-bold text-gray-800">Hari Koperasi</h3>
                            <p class="text-sm text-gray-500 mt-2">Sed facilisis eget elementum.</p>
                            <p class="text-xs text-gray-400 mt-2">1 week ago</p>
                        </div>
                        <div class="bg-white p-4 rounded shadow">
                            <h3 class="font-bold text-gray-800">Minggu Bahasa Melayu</h3>
                            <p class="text-sm text-gray-500 mt-2">Ac mauris fermentum arcu felis facilisis.</p>
                            <p class="text-xs text-gray-400 mt-2">2 weeks ago</p>
                        </div>
                        <div class="bg-white p-4 rounded shadow">
                            <h3 class="font-bold text-gray-800">Cara Mengamalkan 3S</h3>
                            <p class="text-sm text-gray-500 mt-2">Purus accumsan in sed vestibulum.</p>
                            <p class="text-xs text-gray-400 mt-2">1 month ago</p>
                        </div>
                    </div>
                    <a href="/schoolCoordinator/activityList" class="text-blue-500 hover:underline mt-4 block">All Activities</a>
                </section>

                <!-- TVPSS Crew and Applications -->
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mt-8">
                    <section>
                        <h2 class="text-xl font-bold">TVPSS Crew List</h2>
                        <ul class="mt-4 space-y-3">
                            <li class="flex items-center">
                                <img src="https://via.placeholder.com/40" class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                <span>BoBo - Editor</span>
                            </li>
                            <li class="flex items-center">
                                <img src="https://via.placeholder.com/40" class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                <span>LimLimBo - Editor</span>
                            </li>
                        </ul>
                        <a href="/schoolCoordinator/crewList" class="text-blue-500 hover:underline mt-4 block">All Crews</a>
                    </section>

                    <section>
                        <h2 class="text-xl font-bold">Crew Applications</h2>
                        <ul class="mt-4 space-y-3">
                            <li class="flex items-center">
                                <img src="https://via.placeholder.com/40" class="rounded-full w-10 h-10 mr-3" alt="Applicant">
                                <span>Udon - Editor</span>
                            </li>
                            <li class="flex items-center">
                                <img src="https://via.placeholder.com/40" class="rounded-full w-10 h-10 mr-3" alt="Applicant">
                                <span>Ramen - Cameraman</span>
                            </li>
                        </ul>
                        <a href="/schoolCoordinator/crewApplicationList" class="text-blue-500 hover:underline mt-4 block">All Applications</a>
                    </section>
                </div>

                <!-- Content Library -->
                <section class="mt-8">
                    <h2 class="text-xl font-bold">Content Library</h2>
                    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 mt-4">
                        <div class="bg-white p-4 rounded shadow">
                            <img src="https://via.placeholder.com/150" class="rounded mb-3" alt="Content Thumbnail">
                            <p>Minggu Koperasi</p>
                            <p class="text-sm text-gray-400">BoBo w. 3 other crews</p>
                        </div>
                        <!-- Add more cards as needed -->
                    </div>
                    <a href="/schoolCoordinator/contentLibrary" class="text-blue-500 hover:underline mt-4 block">All Videos</a>
                </section>
            </main>
        </div>
    </div>
</body>
</html>
