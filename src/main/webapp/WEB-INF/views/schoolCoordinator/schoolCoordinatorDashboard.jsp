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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <div class="flex-1 flex flex-col">
            <main class="p-8 space-y-4">
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
                                        class="inline-block mt-1 px-10 py-1 bg-blue-100 text-sm rounded-full text-[#3111D2] font-semibold">Level
                                        3</span>
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
                    <section class="w-[70%] bg-white p-4 rounded shadow flex flex-col">
                        <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-300">
                            <h3 class="text-lg font-medium">Content Library</h3>
                            <a href="/schoolCoordinator/contentLibrary" class="text-[#1890FF] hover:underline">All
                                Contents</a>
                        </div>
                        <div class="flex-1 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 mt-4">
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley"
                                class="relative bg-gray-50 p-4 rounded shadow hover:bg-gray-200 flex flex-col">
                                <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                                    class="w-full h-auto rounded object-cover" alt="Applicant">
                                <div class="flex-1">
                                    <p class="text-sm sm:text-base text-gray-500 mt-2 font-semibold">Minggu Koperasi</p>
                                    <span class="text-xs sm:text-sm text-gray-400">FiveStudio</span>
                                </div>
                                <div class="absolute bottom-3 left-4 right-4 flex justify-between items-center">
                                    <span class="text-xs sm:text-sm text-gray-400">365 views</span>
                                    <p class="text-xs sm:text-sm text-gray-400">8/12/2024</p>
                                </div>
                            </a>

                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley"
                                class="relative bg-gray-50 p-4 rounded shadow hover:bg-gray-200 flex flex-col">
                                <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                                    class="w-full h-auto rounded object-cover" alt="Applicant">
                                <div class="flex-1">
                                    <p class="text-sm sm:text-base text-gray-500 mt-2 font-semibold">Aturan Pengerakan
                                        Masuk</p>
                                    <span class="text-xs sm:text-sm text-gray-400">FiveStudio</span>
                                </div>
                                <div class="absolute bottom-3 left-4 right-4 flex justify-between items-center">
                                    <span class="text-xs sm:text-sm text-gray-400">520 views</span>
                                    <p class="text-xs sm:text-sm text-gray-400">1/12/2024</p>
                                </div>
                            </a>

                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley"
                                class="relative bg-gray-50 p-4 rounded shadow hover:bg-gray-200 flex flex-col">
                                <img src="${pageContext.request.contextPath}/assets/thumbnail.jpg"
                                    class="w-full h-auto rounded object-cover" alt="Applicant">
                                <div class="flex-1">
                                    <p class="text-sm sm:text-base text-gray-500 mt-2 font-semibold">Festival TVPSS</p>
                                    <span class="text-xs sm:text-sm text-gray-400">FiveStudio</span>
                                </div>
                                <div class="absolute bottom-3 left-4 right-4 flex justify-between items-center">
                                    <span class="text-xs sm:text-sm text-gray-400">1314 views</span>
                                    <p class="text-xs sm:text-sm text-gray-400">24/11/2024</p>
                                </div>
                            </a>
                        </div>
                    </section>

                    <!-- leaderboard by activity -->
                    <section class="w-[30%] bg-white p-4 rounded shadow flex flex-col">
                        <div class="flex justify-between items-center pb-4 border-b border-dashed border-gray-200">
                            <h3 class="text-lg font-medium">Leaderboard by Total Activity</h3>
                        </div>
                        <div>
                            <!-- ranking 1 -->
                            <div class="flex items-center mt-4 py-4 px-3 border-2 border-yellow-500 rounded-lg mb-2">
                                <div class="border-r border-gray-400 mr-4">
                                    <img src="${pageContext.request.contextPath}/assets/ranking1.jpg"
                                        class="w-10 h-10 mr-3 ml-4" alt="ranking1">
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/gryffindor.jpeg"
                                    alt="Default Profile" class="w-10 h-10 rounded-full mr-3">
                                <span class="font-medium">SMK TAMAN U</span>
                                <div class="block border-l border-gray-400 pl-4 ml-auto font-bold">235</div>
                            </div>
                            <!-- ranking 2 -->
                            <div class="flex items-center py-4 px-3 border-2 border-gray-500 rounded-lg mb-2">
                                <div class="border-r border-gray-400 mr-4">
                                    <img src="${pageContext.request.contextPath}/assets/ranking2.jpg"
                                        class="w-10 h-10 mr-3 ml-4" alt="ranking1">
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/slytherin.jpg" alt="Default Profile"
                                    class="w-10 h-10 rounded-full mr-3">
                                <span class="font-medium">SMK TAMAN C</span>
                                <div class="block border-l border-gray-400 pl-4 ml-auto font-bold">221</div>
                            </div>
                            <!-- ranking 3 -->
                            <div class="flex items-center py-4 px-3 border-2 border-orange-500 rounded-lg mb-2">
                                <div class="border-r border-gray-400 mr-4">
                                    <img src="${pageContext.request.contextPath}/assets/ranking3.jpg"
                                        class="w-10 h-10 mr-3 ml-4" alt="ranking1">
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/ravenclaw.jpeg"
                                    alt="Default Profile" class="w-10 h-10 rounded-full mr-3">
                                <span class="font-medium">SMK TAMAN A</span>
                                <div class="block border-l border-gray-400 pl-4 ml-auto font-bold">213</div>
                            </div>
                            <!-- ranking 4 -->
                            <div class="flex items-center py-4 px-3 border-2 border-gray-300 rounded-lg mb-2">
                                <div class="border-r border-gray-400 mr-4">
                                    <img src="${pageContext.request.contextPath}/assets/ranking4.jpg"
                                        class="w-10 h-10 mr-3 ml-4" alt="ranking1">
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/hufflepuff.jpeg"
                                    alt="Default Profile" class="w-10 h-10 rounded-full mr-3">
                                <span class="font-medium">SMK TAMAN B</span>
                                <div class="block border-l border-gray-400 pl-4 ml-auto font-bold">212</div>
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
                                <p class="text-sm text-gray-500 mt-2">Sed facilisis eget elementum quis cum velit massa.
                                </p>
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
                                <p class="text-sm text-gray-500 mt-2">Purus accumsan in sed vestibulum, tellus, nisl.
                                </p>
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
                <section class="space-y-6 w-full bg-white p-4 rounded shadow">
                    <div class="flex items-center gap-4 pb-2 border-b border-dashed border-gray-300">
                        <h3 class="text-xl font-medium text-left w-full">Quick Links</h3>
                    </div>
                    <div class="w-full grid grid-cols-3 gap-4">
                        <a class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                            href="/schoolCoordinator/addActivity">
                            <img src="${pageContext.request.contextPath}/assets/activities.png"
                                class="w-[60px] h-auto object-cover" />
                            <div class="flex flex-col text-center space-y-2">
                                <h3 class="font-semibold text-xl">
                                    Add New Activity
                                </h3>
                                <p class="text-sm text-gray-500 leading-tight">
                                    Add new TVPSS activity that organized in your schools
                                </p>
                            </div>
                        </a>
                        <a class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                            href="/schoolCoordinator/requestEquipment">
                            <img src="${pageContext.request.contextPath}/assets/resource.png"
                                class="w-[60px] h-auto object-cover" />
                            <div class="flex flex-col text-center space-y-2">
                                <h3 class="font-semibold text-xl">
                                    Request Equipment
                                </h3>
                                <p class="text-sm text-gray-500 leading-tight">
                                    Request equipment for TVPSS activities to increase your shooting quality!
                                </p>
                            </div>
                        </a>
                        <a class="border rounded-lg flex flex-col gap-4 items-center justify-center p-4 hover:bg-gray-100 transition-colors ease-in-out cursor-pointer"
                            href="/schoolCoordinator/upgradeVersion">
                            <img src="${pageContext.request.contextPath}/assets/upgrade.png"
                                class="w-[60px] h-auto object-cover" />
                            <div class="flex flex-col text-center space-y-2">
                                <h3 class="font-semibold text-xl">
                                    Request Version Upgrade
                                </h3>
                                <p class="text-sm text-gray-500 leading-tight">
                                    Satisfy the requirements and upgrade the TVPSS version
                                </p>
                            </div>
                        </a>
                    </div>
                </section>
            </main>
        </div>
    </div>
</body>

</html>