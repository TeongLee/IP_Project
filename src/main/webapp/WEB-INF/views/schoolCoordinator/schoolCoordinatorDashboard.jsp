<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Coordinator Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }
    </script>
</head>

<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-white shadow">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <div class="flex-1 flex flex-col">
            <main class="p-8">
                <!-- Dashboard Header -->
                <div class="flex flex-col mb-8 bg-white p-6 rounded-2xl">
                    <h2 class="text-xl font-bold mb-4">Main Dashboard</h2>
                    <div class="flex justify-between items-center ">
                        <div>
                            <div class="flex ">
                                <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                    class="rounded-full w-14 h-14 mr-3" alt="Crew Member">
                                <div>
                                    <!-- .username will be replaced by the data passed -->
                                    <h4 class="text-lg">Good morning, Cikgu <span
                                            class="username font-bold">Batu</span>! Have a great day!</h4>
                                    <span
                                        class="inline-block mt-1 px-10 py-1 bg-blue-100 text-sm rounded-full text-[#3111D2]">Level
                                        4</span>
                                </div>
                            </div>
                        </div>
                        <div class="flex space-x-8 text-center">
                            <div>
                                <p class="text-2xl font-bold text-blue-600">6</p>
                                <p>Teachers</p>
                            </div>
                            <div>
                                <p class="text-2xl font-bold text-blue-600">21</p>
                                <p>TVPSS Crew</p>
                            </div>
                            <div>
                                <p class="text-2xl font-bold text-blue-600">960</p>
                                <p>Students</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- middle part -->
                <div class="flex gap-4 mb-5">
                    <!-- Content Library -->
                    <section class="w-[65%] bg-white p-4 rounded shadow flex flex-col">
                        <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00">
                            <h3 class="text-lg font-medium">Most Recent Activities</h3>
                            <a href="/schoolCoordinator/activityList" class="text-[#1890FF] hover:underline">All
                                Activities</a>
                        </div>
                        <div class="flex-1 grid grid-cols-2 gap-4 mt-4">
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Karnival Sukan Shooting</h3>
                                <p class="text-sm text-gray-500 mt-2">Lorem aliquet est risus pretium, cursus.</p>
                                <p class="text-xs text-gray-400 mt-2">3 days ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Hari Koperasi</h3>
                                <p class="text-sm text-gray-500 mt-2">Sed facilisis eget elementum quis cum velit massa.
                                </p>
                                <p class="text-xs text-gray-400 mt-2">1 week ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Minggu Bahasa Melayu</h3>
                                <p class="text-sm text-gray-500 mt-2">Ac mauris fermentum arcu felis facilisis.</p>
                                <p class="text-xs text-gray-400 mt-2">2 weeks ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Cara Mengamalkan 3S Di Sekolah</h3>
                                <p class="text-sm text-gray-500 mt-2">Purus accumsan in sed vestibulum, tellus, nisl.
                                </p>
                                <p class="text-xs text-gray-400 mt-2">1 month ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                        </div>
                    </section>

                    <!-- leaderboard by activity -->
                    <section class="w-[35%] bg-white p-4 rounded shadow flex flex-col">
                        <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-00">
                            <h3 class="text-lg font-medium">Most Recent Activities</h3>
                            <a href="/schoolCoordinator/activityList" class="text-[#1890FF] hover:underline">All
                                Activities</a>
                        </div>
                        <div class="flex-1 grid grid-cols-2 gap-4 mt-4">
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Karnival Sukan Shooting</h3>
                                <p class="text-sm text-gray-500 mt-2">Lorem aliquet est risus pretium, cursus.</p>
                                <p class="text-xs text-gray-400 mt-2">3 days ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Hari Koperasi</h3>
                                <p class="text-sm text-gray-500 mt-2">Sed facilisis eget elementum quis cum velit massa.
                                </p>
                                <p class="text-xs text-gray-400 mt-2">1 week ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Minggu Bahasa Melayu</h3>
                                <p class="text-sm text-gray-500 mt-2">Ac mauris fermentum arcu felis facilisis.</p>
                                <p class="text-xs text-gray-400 mt-2">2 weeks ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow">
                                <h3 class="font-bold text-gray-800">Cara Mengamalkan 3S Di Sekolah</h3>
                                <p class="text-sm text-gray-500 mt-2">Purus accumsan in sed vestibulum, tellus, nisl.
                                </p>
                                <p class="text-xs text-gray-400 mt-2">1 month ago</p>
                                <span class="text-xs text-blue-500">FiveStudio</span>
                            </div>
                        </div>
                    </section>
                </div>

                <!-- bottom part -->
                <div class="flex gap-4">
                    <!-- Most Recent Activities -->
                    <section class="w-[55%] bg-white p-4 rounded shadow flex flex-col">
                        <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
                            <h3 class="text-lg font-medium">Most Recent Activities</h3>
                            <a href="/schoolCoordinator/activityList" class="text-[#1890FF] hover:underline">All
                                Activities</a>
                        </div>
                        <div class="flex-1 grid grid-cols-2 gap-4 mt-4">
                            <div class="bg-gray-50 p-4 rounded shadow hover:bg-gray-200 relative">
                                <h3 class="font-bold text-gray-800">Karnival Sukan Shooting</h3>
                                <p class="text-sm text-gray-500 mt-2">Lorem aliquet est risus pretium, cursus.</p>
                                <p class="text-xs text-gray-400 mt-2 absolute bottom-3 right-3">30/11/2024</p>
                                <span class="text-xs text-gray-400 absolute bottom-3 left-3">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow hover:bg-gray-200 relative">
                                <h3 class="font-bold text-gray-800">Hari Koperasi</h3>
                                <p class="text-sm text-gray-500 mt-2">Sed facilisis eget elementum quis cum velit massa.</p>
                                <p class="text-xs text-gray-400 mt-2 absolute bottom-3 right-3">27/11/2024</p>
                                <span class="text-xs text-gray-400 absolute bottom-3 left-3">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow hover:bg-gray-200 relative">
                                <h3 class="font-bold text-gray-800">Minggu Bahasa Melayu</h3>
                                <p class="text-sm text-gray-500 mt-2">Ac mauris fermentum arcu felis facilisis.</p>
                                <p class="text-xs text-gray-400 mt-2 absolute bottom-3 right-3">13/11/2024</p>
                                <span class="text-xs text-gray-400 absolute bottom-3 left-3">FiveStudio</span>
                            </div>
                            <div class="bg-gray-50 p-4 rounded shadow hover:bg-gray-200 relative">
                                <h3 class="font-bold text-gray-800">Cara Mengamalkan 3S Di Sekolah</h3>
                                <p class="text-sm text-gray-500 mt-2">Purus accumsan in sed vestibulum, tellus, nisl.</p>
                                <p class="text-xs text-gray-400 mt-2 absolute bottom-3 right-3">23/10/2024</p>
                                <span class="text-xs text-gray-400 absolute bottom-3 left-3">FiveStudio</span>
                            </div>
                        </div>
                    </section>

                    <!-- TVPSS Crew List and Applications -->
                    <div class="w-[45%] flex flex-col gap-4">
                        <!-- TVPSS Crew List -->
                        <section class="bg-white p-4 rounded shadow">
                            <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
                                <h3 class="text-lg font-medium">TVPSS Crew List</h3>
                                <a href="/schoolCoordinator/crewList" class="text-[#1890FF] hover:underline">All
                                    Crews</a>
                            </div>
                            <ul class="mt-4 grid grid-cols-2 gap-4">
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                    <span>Alex - Editor</span>
                                </li>
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                    <span>Bryan - Editor</span>
                                </li>
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                    <span>Ali - Cameraman</span>
                                </li>
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Crew Member">
                                    <span>Adam - Script Writer</span>
                                </li>
                            </ul>
                        </section>


                        <!-- Crew Applications -->
                        <section class="bg-white p-4 rounded shadow">
                            <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
                                <h3 class="text-lg font-medium">Crew Applications</h3>
                                <a href="/schoolCoordinator/crewApplicationList"
                                    class="text-[#1890FF] hover:underline">All Applications</a>
                            </div>
                            <ul class="mt-4 space-y-3">
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Applicant">
                                    <span>Udon - Editor</span>
                                </li>
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Applicant">
                                    <span>Ramen - Cameraman</span>
                                </li>
                                <li class="flex items-center">
                                    <img src="${pageContext.request.contextPath}/assets/photo_2024-12-09_12-14-09.jpg"
                                        class="rounded-full w-10 h-10 mr-3" alt="Applicant">
                                    <span>KimChi - Script Writer</span>
                                </li>
                            </ul>
                        </section>
                    </div>
                </div>


            </main>
        </div>
    </div>
</body>

</html>