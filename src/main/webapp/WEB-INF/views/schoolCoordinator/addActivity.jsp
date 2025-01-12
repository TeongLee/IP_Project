<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Activity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      rel="stylesheet"
    />
    <script>
      let crewCount = 0; // Counter for number of crew members

      function addCrewMember() {
        const crewSelect = document.getElementById("crew_involved");
        const selectedCrewId = crewSelect.value;
        const selectedCrewName =
          crewSelect.options[crewSelect.selectedIndex]?.innerText.trim();

        console.log("Selected Crew ID: ", selectedCrewId);
        console.log("Selected Crew Name: ", selectedCrewName);

        if (!selectedCrewId || !selectedCrewName) {
          alert("Please select a valid crew member.");
          return;
        }

        // Check for duplicate crew members
        const existingRows = document.querySelectorAll("#crew_table tbody tr");
        for (const row of existingRows) {
          if (row.dataset.crewId === selectedCrewId) {
            alert("This crew member is already added.");
            return;
          }
        }

        // Add new row dynamically
        const tableBody = document.querySelector("#crew_table tbody");
        const row = document.createElement("tr");
        row.dataset.crewId = selectedCrewId;

        // Create Name Cell
        const nameCell = document.createElement("td");
        nameCell.className = "p-2 border-r";
        nameCell.textContent = selectedCrewName;

        // Create Role Cell
        const roleCell = document.createElement("td");
        roleCell.className = "p-2 border-r";

        const hiddenInput = document.createElement("input");
        hiddenInput.type = "hidden";
        hiddenInput.name = "crewIds";
        hiddenInput.value = selectedCrewId;

        const roleSelect = document.createElement("select");
        roleSelect.name = "crewRoles";
        roleSelect.className =
          "w-full border-none rounded-lg p-2 focus:border-blue-600 outline-none";
        roleSelect.required = true;

        const defaultOption = new Option("Select Role", "", true, true);
        defaultOption.disabled = true;
        roleSelect.add(defaultOption);

        roleSelect.add(new Option("Camera Operator", "Camera Operator"));
        roleSelect.add(new Option("Editor", "Editor"));
        roleSelect.add(new Option("Director", "Director"));

        roleCell.appendChild(hiddenInput);
        roleCell.appendChild(roleSelect);

        // Create Action Cell
        const actionCell = document.createElement("td");
        actionCell.className = "p-2";

        const removeButton = document.createElement("button");
        removeButton.type = "button";
        removeButton.className =
          "bg-red-500 w-full text-white rounded-lg p-2 hover:bg-red-600";
        removeButton.textContent = "Remove";
        removeButton.onclick = () => {
          row.remove();
          crewCount--;
          document.getElementById("crewCount").value = crewCount;
        };

        actionCell.appendChild(removeButton);

        // Append Cells to Row
        row.appendChild(nameCell);
        row.appendChild(roleCell);
        row.appendChild(actionCell);

        // Append Row to Table
        tableBody.appendChild(row);

        // Update Crew Count
        crewCount++;
        document.getElementById("crewCount").value = crewCount;
      }

      function removeCrew(button) {
        const row = button.closest("tr");
        if (row) {
          row.remove();
          // Decrement the counter and update the hidden input
          crewCount--;
          document.getElementById("crewCount").value = crewCount;
          console.log("Crew Count After Removal: ", crewCount);
        }
      }
    </script>
    <link
      rel="icon"
      type="image/x-icon"
      href="${pageContext.request.contextPath}/assets/favicon.ico"
    />
  </head>

  <body class="bg-gray-100">
    <div class="flex min-h-screen">
      <!-- Sidebar -->
      <aside class="w-64">
        <jsp:include
          page="/WEB-INF/views/common/sidebar/schoolCoordinatorSidebar.jsp"
        />
      </aside>

      <!-- Main Content -->
      <main class="h-screen w-full p-6">
        <!-- Page Title -->
        <div class="flex justify-between items-center mb-6">
          <h1 class="text-4xl font-bold text-gray-700">Add Activity</h1>
          <p class="text-gray-500">
            Fill in the details below to create a new activity.
          </p>
        </div>

        <!-- Form Section -->
        <div
          class="w-full mx-auto bg-white overflow-y-auto flex flex-col items-center rounded-lg p-8 gap-12"
        >
          <form
            action="/schoolCoordinator/submitActivity"
            method="post"
            class="w-full flex flex-col gap-12"
          >
            <div class="w-full grid grid-cols-2 gap-4">
              <h3 class="font-semibold text-2xl col-span-full">
                Section 1: Activity Information
              </h3>

              <!-- Activity Name -->
              <div class="flex flex-col col-span-full gap-2 mt-4">
                <label for="activity_name" class="font-semibold"
                  >Activity/Program Name</label
                >
                <input
                  type="text"
                  id="activity_name"
                  name="activityName"
                  class="border focus:border-blue-600 outline-none rounded-lg p-2"
                  placeholder="Activity Name"
                  required
                />
              </div>

              <!-- Activity Description -->
              <div class="flex flex-col col-span-full gap-2">
                <label for="activity_description" class="font-semibold"
                  >Activity Description</label
                >
                <textarea
                  id="activity_description"
                  name="activityDescription"
                  class="border focus:border-blue-600 outline-none rounded-lg p-2 min-h-[150px]"
                  placeholder="Tell us about your activity within 50 words"
                  required
                ></textarea>
              </div>

              <!-- Start Date -->
              <div class="flex flex-col col-span-1 gap-2">
                <label for="start_date" class="font-semibold">Start Date</label>
                <input
                  type="date"
                  id="start_date"
                  name="startDate"
                  class="border focus:border-blue-600 outline-none rounded-lg p-2"
                  required
                />
              </div>

              <!-- End Date -->
              <div class="flex flex-col col-span-1 gap-2">
                <label for="end_date" class="font-semibold">End Date</label>
                <input
                  type="date"
                  id="end_date"
                  name="endDate"
                  class="border focus:border-blue-600 outline-none rounded-lg p-2"
                  required
                />
              </div>

              <!-- Coordinator Name -->
              <div class="flex flex-col col-span-1 gap-2">
                <label for="coordinator_name" class="font-semibold"
                  >Coordinator Name</label
                >
                <input
                  type="text"
                  id="coordinator_name"
                  name="coordinatorName"
                  class="border focus:border-blue-600 outline-none rounded-lg p-2"
                  placeholder="Coordinator Name"
                  required
                />
              </div>

              <!-- Crew Selection -->
              <div class="flex flex-col gap-2 col-span-1">
                <label for="crew_involved" class="font-semibold"
                  >Crew Involved</label
                >
                <div class="w-full flex justify-between items-center gap-2">
                  <select
                    id="crew_involved"
                    class="flex-1 border focus:border-blue-600 outline-none rounded-lg p-2"
                  >
                    <option value="" disabled selected>
                      Select a crew member
                    </option>
                    <c:forEach var="crew" items="${crewList}">
                      <option value="${crew.id}">${crew.name}</option>
                    </c:forEach>
                  </select>
                  <button
                    type="button"
                    class="w-[100px] bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in"
                    onclick="addCrewMember()"
                  >
                    Add
                  </button>
                </div>
              </div>

              <!-- Crew Table -->
              <div class="col-span-full mt-4">
                <h3 class="font-semibold text-xl">Crew List</h3>
                <table
                  id="crew_table"
                  class="w-full border-collapse border border-gray-300 mt-2"
                >
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

            <!-- Hidden Input for Crew Count -->
            <input type="hidden" id="crewCount" name="crewCount" value="0" />

            <!-- Submit Button -->
            <div class="flex flex-col col-span-full gap-2 mt-6">
              <button
                type="submit"
                class="bg-blue-500 text-white font-semibold rounded-lg p-2 hover:bg-blue-600 transition-colors ease-in"
              >
                Submit
              </button>
            </div>
          </form>
        </div>
      </main>
    </div>
  </body>
</html>
