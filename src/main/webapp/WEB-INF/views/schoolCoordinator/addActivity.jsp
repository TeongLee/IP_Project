<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Activity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }

        // JavaScript to add a crew member row
        function addCrewMember() {
            const crewSelect = document.getElementById('crew_involved');
            const selectedCrew = crewSelect.value;
            const selectedCrewText = crewSelect.options[crewSelect.selectedIndex].text;

            if (selectedCrew) {
                const table = document.getElementById('crew_table');
                const row = table.insertRow();

                // Generate a unique ID for the row
                const uniqueId = `crew-${Date.now()}`;

                row.setAttribute('id', uniqueId);

                // Crew Name Column
                const nameCell = row.insertCell(0);
                nameCell.textContent = selectedCrewText;
                nameCell.classList.add('p-2', 'border-r');

                // Role Selection Column
                const roleCell = row.insertCell(1);
                roleCell.classList.add('p-2', 'border-r');
                roleCell.innerHTML = `
                    <select class="w-full border-none rounded-lg p-2 focus:border-blue-600 outline-none">
                        <option value="" selected>Select Role</option>
                        <option value="Camera Operator">Camera Operator</option>
                        <option value="Editor">Editor</option>
                        <option value="Director">Director</option>
                    </select>
                `;

                // Remove Button Column
                const removeCell = row.insertCell(2);
                removeCell.classList.add('p-2');
                removeCell.innerHTML = `
                    <button class="bg-red-500 w-full text-white rounded-lg p-2 hover:bg-red-600"
                        onclick="removeCrew('${uniqueId}')">Remove</button>
                `;
            }
        }
        // JavaScript to remove a crew member row
        function removeCrew(crewId) {
            const row = document.getElementById(`crew-${crewId}`);
            if (row) row.remove();
        }
    </script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico">
</head>

<body class="bg-gray-100">
    <div class="flex min-h-screen">
        <!-- Sidebar -->
        <aside class="w-64">
            <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />
        </aside>

        <!-- Main Content -->
        <main class="h-screen w-full p-6">
            <div
                class="w-full mx-auto h-full bg-white overflow-y-auto flex flex-col items-center rounded-lg p-8 gap-12">
                <div class="flex flex-col justify-center items-center gap-2.5">
                    <img src="${pageContext.request.contextPath}/assets/activities.png" alt="logo" class="w-20 h-20" />
                    <div class="text-center">
                        <h1 class="text-3xl font-semibold">Add Activity</h1>
                        <p class="text-lg text-gray-500">Record your activity, become the top contributed school in
                            TVPSS Program!</p>
                    </div>
                </div>

                <!-- Form -->
                <div class="bg-white w-full">
                    <form class="w-full flex flex-col gap-12">
                        <div class="w-full grid grid-cols-2 gap-4">
                            <h3 class="font-semibold text-2xl col-span-full">Section 1: Activity Information</h3>
                            <!-- Activity Name -->
                            <div class="flex flex-col col-span-full gap-2 mt-4">
                                <label for="activity_name" class="font-semibold">Activity/Program Name</label>
                                <input type="text" name="activity_name"
                                    class="border focus:border-blue-600 outline-none rounded-lg p-2"
                                    placeholder="Activity Name" />
                            </div>

                            <!-- Activity Description -->
                            <div class="flex flex-col col-span-full gap-2">
                                <label for="activity_description" class="font-semibold">Activity Description</label>
                                <textarea name="activity_description"
                                    class="border focus:border-blue-600 outline-none rounded-lg p-2 min-h-[150px]"
                                    placeholder="Tell us about your activty within 50 words"></textarea>
                            </div>

                            <!-- Start Date -->
                            <div class="flex flex-col col-span-1 gap-2">
                                <label for="start_date" class="font-semibold">Start Date</label>
                                <input type="date" name="start_date"
                                    class="border focus:border-blue-600 outline-none rounded-lg p-2" />
                            </div>

                            <!-- End Date -->
                            <div class="flex flex-col col-span-1 gap-2">
                                <label for="end_date" class="font-semibold">End Date</label>
                                <input type="date" name="end_date"
                                    class="border focus:border-blue-600 outline-none rounded-lg p-2" />
                            </div>

                            <!-- Activity Coordinator -->
                            <div class="flex flex-col gap-2 col-span-1">
                                <label for="coordinator" class="font-semibold">Coordinator</label>
                                <select name="coordinator"
                                    class="border focus:border-blue-600 outline-none rounded-lg p-2">
                                    <option value="" class="p-2 font-semibold">Select the coordinator</option>
                                    <option value="Cikgu Rohani" class="p-2 hover:bg-blue-100">Cikgu Rohani</option>
                                    <option value="Cikgu Raziah" class="p-2 hover:bg-blue-100">Cikgu Raziah</option>
                                    <option value="Cikgu Ramli" class="p-2 hover:bg-blue-100">Cikgu Ramli</option>
                                </select>
                            </div>

                            <!-- Crew Involved -->
                            <div class="flex flex-col gap-2 col-span-1">
                                <label for="crew_involved" class="font-semibold">Crew Involved</label>
                                <div class="w-full flex justify-between items-center gap-2">
                                    <select id="crew_involved"
                                        class="flex-1 border focus:border-blue-600 outline-none rounded-lg p-2">
                                        <option value="" class="p-2 font-semibold">Select the crew member</option>
                                        <option value="Kamarul" class="p-2 hover:bg-blue-100">Kamarul</option>
                                        <option value="Aisyah" class="p-2 hover:bg-blue-100">Aisyah</option>
                                        <option value="ZeMin" class="p-2 hover:bg-blue-100">Ze Min</option>
                                    </select>
                                    <button type="button"
                                        class="w-[100px] bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in"
                                        onclick="addCrewMember()">Add</button>
                                </div>
                            </div>

                            <!-- Crew Table -->
                            <div class="col-span-full mt-4">
                                <h3 class="font-semibold text-xl">Crew List</h3>
                                <table id="crew_table" class="w-full border-collapse border border-gray-300 mt-2">
                                    <thead>
                                        <tr class="bg-gray-200">
                                            <th class="border border-gray-300 p-2">Crew Name</th>
                                            <th class="border border-gray-300 p-2">Role</th>
                                            <th class="border border-gray-300 p-2">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Dynamically added rows will appear here -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>

                <div class="w-full grid grid-cols-3 gap-4">
                    <h3 class="font-semibold text-2xl col-span-full">Section 2: Activity Video</h3>
                    <!-- Video URL -->
                    <div class="flex flex-col col-span-full gap-2 mt-4">
                        <label for="url" class="font-semibold">Video Link</label>
                        <input type="text" name="url" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                            placeholder="Paste activity video link" />
                    </div>

                    <!-- Video Thumbnail -->
                    <div class="relative w-full col-span-1 flex flex-col gap-2">
                        <label for="document" class="font-semibold">Video Thumbnail</label>
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
                    
                    <!-- Submit Button -->
                    <div class="flex flex-col col-span-full gap-2 mt-6">
                        <button type="submit"
                            class="bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in">Submit</button>
                    </div>
                </div>

                </form>
            </div>
    </div>
    </main>
    </div>
</body>

</html>