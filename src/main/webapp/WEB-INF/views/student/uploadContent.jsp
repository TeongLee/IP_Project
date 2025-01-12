<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Upload Content</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://kit.fontawesome.com/3c4436f896.js" crossorigin="anonymous"></script>
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
          <img src="${pageContext.request.contextPath}/assets/resource.png" alt="logo" class="w-20 h-20" />
          <div class="text-center">
            <h1 class="text-3xl font-semibold">Upload Video Content</h1>
            <p class="text-base text-gray-500">Created some great videos? Share with us now!</p>
          </div>
        </div>

        <!-- Alerts for Success or Error -->
        <c:if test="${not empty success}">
          <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative w-full">
            <strong>Success:</strong> ${success}
          </div>
        </c:if>
        <c:if test="${not empty error}">
          <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative w-full">
            <strong>Error:</strong> ${error}
          </div>
        </c:if>

        <!-- Form -->
        <div class="bg-white w-full">
            <form action="/student/submitContent" method="post" class="w-full grid grid-cols-3 gap-4">
                <!-- Title -->
                <div class="flex flex-col col-span-full gap-2">
                    <label for="title" class="font-semibold">Video Title</label>
                    <input type="text" id="title" name="title" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                        placeholder="Give your video a title" required />
                </div>
            
                <!-- Video Link -->
                <div class="flex flex-col col-span-full gap-2">
                    <label for="videoLink" class="font-semibold">Video Link</label>
                    <input type="text" id="videoLink" name="videoLink" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                        placeholder="Paste your video link here (e.g., YouTube or Vimeo)" required />
                </div>
            
                <!-- Description -->
                <div class="flex flex-col col-span-2 gap-2">
                    <label for="description" class="font-semibold">Description</label>
                    <textarea id="description" name="description" class="border focus:border-blue-600 outline-none rounded-lg p-2 min-h-[150px]"
                        placeholder="Tell us about your video within 30 words" required></textarea>
                </div>
            
                <!-- Uploaded By -->
                <div class="flex flex-col col-span-1 gap-2">
                    <label for="uploadedBy" class="font-semibold">Uploaded By</label>
                    <input type="text" id="uploadedBy" name="uploadedBy" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                        placeholder="Enter your name" required />
                </div>
            
                <!-- Recording Date -->
                <div class="flex flex-col col-span-1 gap-2">
                    <label for="recordingDate" class="font-semibold">Recording Date</label>
                    <input type="date" id="recordingDate" name="recordingDate" class="border focus:border-blue-600 outline-none rounded-lg p-2"
                        required />
                </div>
            
                <!-- Submit Button -->
                <div class="flex flex-col col-span-full gap-2 mt-6">
                    <button type="submit"
                        class="bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in">
                        Submit
                    </button>
                </div>
            </form>
            
        </div>
      </div>
    </main>
  </div>
</body>

</html>
