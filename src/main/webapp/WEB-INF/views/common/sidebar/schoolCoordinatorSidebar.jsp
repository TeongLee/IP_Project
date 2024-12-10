<div class="w-64 min-w-[250px] h-full">
    <!-- User Info -->
    <div class="fixed left-0 top-0 h-full bg-white shadow-lg mr-1">
        <div class="p-4 flex items-center border-b">
            <img src="https://cdn-icons-png.flaticon.com/512/5310/5310895.png" alt="Profile Picture"
                class="w-12 h-12 rounded-full mr-3" />
            <div>
                <p class="text-sm text-gray-500">SMK Batu Pahat Best Food</p>
                <h3 class="text-lg text-gray-700">Cikgu <span class="text-black font-semibold">Batu</span></h3>
            </div>
        </div>

        <!-- Menu Items -->
        <nav class="p-4">
            <!-- Dashboard -->
            <div>
                <button onclick="toggleMenu('dashboardMenu')"
                    class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded">
                    <span class="flex items-center">
                        <i class="fas fa-home mr-3"></i>
                        Dashboard
                    </span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd"
                            d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                            clip-rule="evenodd" />
                    </svg>
                </button>
                <div id="dashboardMenu" class="ml-6 hidden">
                    <a href="/schoolCoordinator/dashboard"
                        class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded mb-1">-
                        Main Dashboard</a>
                    <a href="/schoolCoordinator/activityList"
                        class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">- Activity List</a>
                </div>
            </div>

            <!-- Crew List -->
            <a href="/schoolCoordinator/crewList"
                class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                <i class="fas fa-users mr-3"></i>
                Crew List
            </a>

            <!-- Crew Application List -->
            <a href="/schoolCoordinator/crewApplicationList"
                class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                <i class="fas fa-clipboard mr-3 ml-1"></i>
                Crew Application List
            </a>

            <!-- Content Library -->
            <a href="/schoolCoordinator/contentLibrary"
                class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
                <i class="fas fa-solid fa-video mr-3"></i>
                Content Library
            </a>

            <!-- Achievements -->
            <!-- <a href="#" class="block py-2 px-4 text-gray-700 hover:bg-gray-100 rounded flex items-center my-2">
            <i class="fas fa-trophy mr-3"></i>
            Achievements
        </a> -->

            <!-- Request Tracking -->
            <div>
                <button onclick="toggleMenu('requestMenu')"
                    class="w-full text-left flex items-center justify-between py-2 px-4 text-gray-700 hover:bg-gray-100 rounded my-2">
                    <span class="flex items-center">
                        <i class="fas fa-tools mr-3"></i>
                        Request Tracking
                    </span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd"
                            d="M5.293 9.293a1 1 0 011.414 0L10 12.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                            clip-rule="evenodd" />
                    </svg>
                </button>
                <div id="requestMenu" class="ml-6 hidden">
                    <a href="/schoolCoordinator/equipments"
                        class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded whitespace-nowrap mb-1">- Resource &
                        Equipment</a>
                    <a href="/schoolCoordinator/version"
                        class="block py-2 px-4 text-gray-600 hover:bg-gray-100 rounded">- Version Upgrade</a>
                </div>
            </div>

        </nav>
        <!-- Logout -->
        <div class="absolute bottom-4 left-0 px-4 w-full">
            <a href="/" class="block py-2 px-4 text-red-500 hover:bg-red-100 rounded flex items-center w-full ">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mr-2" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M9 9l3 3m0 0l-3 3m3-3h8m-2-2a2 2 0 100 4" />
                </svg>
                Logout
            </a>
        </div>
    </div>
</div>