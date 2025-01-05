<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Submit Crew Application</title>
    <script src="https://cdn.tailwindcss.com"></script>
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
            <div class="w-full mx-auto h-full bg-white overflow-y-auto flex flex-col items-center rounded-lg p-8 gap-6">
                <!-- Page Header -->
                <div class="flex flex-col justify-center items-center gap-2.5">
                    <img src="${pageContext.request.contextPath}/assets/application.png" alt="logo" class="w-20 h-20" />
                    <div class="text-center">
                        <h1 class="text-3xl font-semibold">Submit Crew Application</h1>
                        <p class="text-base text-gray-500">Join the TVPSS family by filling out the form below!</p>
                    </div>
                </div>

                <!-- Alerts for Success or Error -->
                <% if (request.getAttribute("success") != null) { %>
                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mb-6 w-full">
                        <strong>Success:</strong> <%= request.getAttribute("success") %>
                    </div>
                <% } %>
                <% if (request.getAttribute("error") != null) { %>
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-6 w-full">
                        <strong>Error:</strong> <%= request.getAttribute("error") %>
                    </div>
                <% } %>

                <!-- Form -->
                <div class="bg-white w-full">
                    <form action="/student/submitCrewApplication" method="post" class="w-full grid grid-cols-3 gap-6">
                        <h3 class="font-semibold text-2xl col-span-full my-3">Section 1: Personal Information</h3>

                        <!-- Full Name -->
                        <div class="flex flex-col col-span-2 gap-2">
                            <label for="name" class="font-semibold">Full Name</label>
                            <input id="name" type="text" name="name"
                                class="border focus:border-blue-600 outline-none rounded-lg p-3"
                                placeholder="Write your full name here" required />
                        </div>

                        <!-- Position -->
                        <div class="flex flex-col gap-2">
                            <label for="position" class="font-semibold">Position</label>
                            <select id="position" name="position"
                                class="border focus-visible:border-blue-600 rounded-lg p-3" required>
                                <option value="" disabled>Select your position</option>
                                <option value="Director">Director</option>
                                <option value="Editor">Editor</option>
                                <option value="Cameraman">Cameraman</option>
                                <option value="Actor">Actor</option>
                                <option value="Script Writer">Script Writer</option>
                            </select>
                        </div>

                        <!-- Description -->
                        <div class="flex flex-col col-span-full gap-2">
                            <label for="description" class="font-semibold">Description</label>
                            <textarea id="description" name="description"
                                class="border focus:border-blue-600 outline-none rounded-lg p-3 min-h-[100px]"
                                placeholder="Briefly describe yourself" required></textarea>
                        </div>

                        <h3 class="font-semibold text-2xl col-span-full mt-8 mb-3">Section 2: Video Information</h3>

                        <!-- Video Link -->
                        <div class="flex flex-col col-span-2 gap-2">
                            <label for="videoLink" class="font-semibold">Video Link</label>
                            <input id="videoLink" type="text" name="videoLink"
                                class="border focus:border-blue-600 outline-none rounded-lg p-3"
                                placeholder="Paste your video link here (e.g., YouTube or Vimeo)" required />
                        </div>

                        <!-- Video Description -->
                        <div class="flex flex-col col-span-full gap-2">
                            <label for="videoDescription" class="font-semibold">Video Description</label>
                            <textarea id="videoDescription" name="videoDescription"
                                class="border focus:border-blue-600 outline-none rounded-lg p-3 min-h-[100px]"
                                placeholder="Briefly describe the content of your video" required></textarea>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex flex-col col-span-full gap-2 mt-6">
                            <button type="submit"
                                class="bg-blue-500 text-white font-semibold rounded-lg p-3 hover:bg-blue-600 transition-colors ease-in">
                                Submit Application
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>

</html>
