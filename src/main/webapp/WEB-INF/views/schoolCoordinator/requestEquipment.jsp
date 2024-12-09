<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Request</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script>
        // JavaScript for toggling submenus
        function toggleMenu(menuId) {
            const menu = document.getElementById(menuId);
            menu.classList.toggle('hidden');
        }
    </script>
</head>
<body class="bg-gray-100 font-sans">
    <div class="flex">
        <!-- Include Sidebar -->
        <jsp:include page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp" />

        <!-- Main Content -->
        <div class="flex-1 p-6 mx-6">
            <div class="mb-4">
                <a href="javascript:history.back()" 
                   class="inline-flex items-center text-blue-600 font-semibold hover:underline">
                  <i class="fas fa-arrow-left mr-2"></i>Back
                </a>
            </div>
            <!-- <a href="/schoolCoordinator/equipments" class="text-black-500 mb-4 inline-block text-lg">&lt; Back</a> -->
            <h1 class="text-3xl font-bold mb-3">Add Request</h1>
            <p class="text-gray-600 text-md mb-6">Request for equipment here</p>

            <div class="grid grid-cols-[35%_65%] gap-2 bg-white shadow-md p-6 rounded ">
                <!-- Left Section -->
                <div class="text-center bg-blue-500 p-6 rounded ">
                    <img src="https://upload.wikimedia.org/wikipedia/ms/f/fc/4403026837235l.jpg" alt="School Logo" class="rounded-full w-60 mx-auto mb-8 mt-4">
                    <h2 class="text-3xl font-bold text-white">SMK BATU PAHAT</h2>
                    <div class="text-2xl font-bold rounded my-4 text-white bg-red-600 mx-8">Model 3</div>
                    <p class="text-gray-600 text-lg text-white">Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru, Johor</p>
                </div>
                
                <!-- Right Section -->
                <form action="/schoolCoordinator/submitEquipmentRequest" method="post" class="space-y-4 px-10">
                    <h2 class="text-3xl font-medium text-center mt-3 mb-6">Request Form</h2>   
                    <div>
                        <label class="block font-semibold mb-2">Equipment Name</label>
                        <input type="text" name="equipmentName" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 
                            focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2"
                            placeholder="Enter equipment name" required>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Quantity</label>
                        <input type="number" name="quantity" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 
                            focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2"
                            placeholder="Enter quantity">
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Date Required</label>
                        <div class="flex space-x-2">
                            <input type="date" name="requestStartDate" class="w-1/2 outline outline-1 -outline-offset-1 outline-gray-300 
                                focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2" required>
                            <p class="text-gray-600 text-md mt-2">to</p>
                            <input type="date" name="requestEndDate" class="w-1/2 outline outline-1 -outline-offset-1 outline-gray-300 
                                focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2" required>
                        </div>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Urgency Level</label>
                        <select name="urgencyLevel" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 
                                focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2">
                            <option value="Low" class="font-semibold text-green-500">Low</option>
                            <option value="Medium" class="font-semibold text-yellow-500">Medium</option>
                            <option value="High" class="font-semibold text-red-500">High</option>
                        </select>
                    </div>
                    <div>
                        <label class="block font-semibold mb-2">Resource Description</label>
                        <textarea name="resourceDescription" class="w-full outline outline-1 -outline-offset-1 outline-gray-300 
                            focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 rounded p-2"
                            rows="4" placeholder="Describe the resource requirements here.." required></textarea>
                    </div>
                    <div class="text-center ">
                        <button type="submit" class="inline-block w-1/4 border border-green-600 bg-green-400 hover:bg-green-500 text-white py-2 px-4 rounded-2xl w-2/4">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
