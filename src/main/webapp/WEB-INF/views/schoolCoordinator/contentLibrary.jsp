<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Content Library</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800">
    <header class="bg-blue-500 text-white py-4">
        <div class="container mx-auto">
            <h1 class="text-2xl font-bold">Content Library</h1>
        </div>
    </header>

    <main class="container mx-auto mt-6">
        <!-- Alert Messages -->
        <c:if test="${not empty success}">
            <div class="bg-green-100 text-green-700 p-4 mb-4 rounded-md">
                ${success}
            </div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="bg-red-100 text-red-700 p-4 mb-4 rounded-md">
                ${error}
            </div>
        </c:if>

        <!-- Content Table -->
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
                <thead>
                    <tr class="bg-gray-200 text-gray-700">
                        <th class="px-4 py-2">ID</th>
                        <th class="px-4 py-2">Title</th>
                        <th class="px-4 py-2">Description</th>
                        <th class="px-4 py-2">Video Link</th>
                        <th class="px-4 py-2">Uploaded By</th>
                        <th class="px-4 py-2">Recording Date</th>
                        <th class="px-4 py-2">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${contentList}" var="content">
                        <tr class="border-b hover:bg-gray-100">
                            <td class="px-4 py-2">${content.id}</td>
                            <td class="px-4 py-2">${content.title}</td>
                            <td class="px-4 py-2">${content.description}</td>
                            <td class="px-4 py-2">
                                <a href="${content.videoLink}" class="text-blue-500 hover:underline" target="_blank">Watch Video</a>
                            </td>
                            <td class="px-4 py-2">${content.uploadedBy}</td>
                            <td class="px-4 py-2">${content.recordingDate}</td>
                            <td class="px-4 py-2">
                                <form method="post" action="/schoolCoordinator/deleteContent">
                                    <input type="hidden" name="contentId" value="${content.id}" />
                                    <button type="submit" class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>


</body>
</html>
