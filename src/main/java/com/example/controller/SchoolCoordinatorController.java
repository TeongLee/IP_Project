package com.example.controller;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.ActivityListDAO;
import com.example.dao.CrewApplicationDAO;
import com.example.dao.EquipmentRequestDAO;
import com.example.dao.InventoryDAO;
import com.example.dao.VersionUpdateRequestDAO;
import com.example.model.Activity;
import com.example.model.ActivityCrew;
import com.example.model.CrewApplication;
import com.example.model.EquipmentRequest;
import com.example.model.VersionUpdateRequest;


@Controller
@RequestMapping("/schoolCoordinator")
public class SchoolCoordinatorController {

    private final EquipmentRequestDAO equipmentRequestDAO;
    private final CrewApplicationDAO crewApplicationDAO;
    private final InventoryDAO inventoryDAO;
    private final VersionUpdateRequestDAO versionUpdateRequestDAO;
    private final ActivityListDAO activityListDAO;
    private final ActivityCrew activityCrew;

    public static final String STATUS_PENDING = "Pending";
    public static final String STATUS_ACCEPTED = "Accepted";
    public static final String STATUS_REJECTED = "Rejected";
    public static final String STATUS_REMOVED = "Removed";

    public SchoolCoordinatorController() {
        this.equipmentRequestDAO = new EquipmentRequestDAO();
        this.crewApplicationDAO = new CrewApplicationDAO();
        this.inventoryDAO = new InventoryDAO();
        this.versionUpdateRequestDAO = new VersionUpdateRequestDAO();
        this.activityListDAO = new ActivityListDAO();
        this.activityCrew = new ActivityCrew();
    }

    @RequestMapping("/crewList")
    public String requestCrewList(Model model) {
        model.addAttribute("page", "crewList");
        List<CrewApplication> acceptedApplications = crewApplicationDAO.getAcceptedApplications();
        model.addAttribute("crewList", acceptedApplications);
        return "schoolCoordinator/crewList";
    }
    
    @RequestMapping("/crewApplicationList")
    public String viewCrewApplications(Model model) {
        model.addAttribute("page", "crewApplicationList");
        List<CrewApplication> applications = crewApplicationDAO.getPendingApplications();
        model.addAttribute("crewApplications", applications);
        return "schoolCoordinator/crewApplicationList";
    }

    // Approve Crew Application
    @PostMapping("/approveCrewApplication")
    public String approveCrewApplication(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, STATUS_ACCEPTED);
        return "redirect:/schoolCoordinator/crewApplicationList";
    }

    // Reject Crew Application
    @PostMapping("/rejectCrewApplication")
    public String rejectCrewApplication(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, STATUS_REJECTED);
        return "redirect:/schoolCoordinator/crewApplicationList";
    }
    

    // Remove Crew Member
    @PostMapping("/removeCrewMember")
    public String removeCrewMember(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, STATUS_REMOVED);
        return "redirect:/schoolCoordinator/crewList";
    }

    
    @RequestMapping("/activityList")
    public String requestActivityList(Model model) {
    model.addAttribute("page", "activityList");

    try {
        List<Map<String, Object>> activityList = activityListDAO.getAllActivitiesWithCrewCount();
        System.out.println("Fetched Activities: " + activityList); // Debug log
        model.addAttribute("activityList", activityList);
    } catch (Exception e) {
        e.printStackTrace();
        model.addAttribute("error", "Failed to load activity list.");
    }

    return "schoolCoordinator/activityList";
}


    @GetMapping("/addActivity")
    public String requestAddActivity(Model model) {
        model.addAttribute("page", "addActivity");
        model.addAttribute("crewList", crewApplicationDAO.getAcceptedApplications());
        return "schoolCoordinator/addActivity";
    }
    @PostMapping("/submitActivity")
public String submitActivity(
        @RequestParam("activityName") String activityName,
        @RequestParam("activityDescription") String activityDescription,
        @RequestParam("startDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
        @RequestParam("endDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate,
        @RequestParam("coordinatorName") String coordinatorName,
        @RequestParam("crewCount") int crewCount,
        Model model) {

    System.out.println("Activity Name: " + activityName);
    System.out.println("Crew Count: " + crewCount);

    Activity activity = new Activity(0, activityName, activityDescription, startDate, endDate, coordinatorName, crewCount);

    try {
        activityListDAO.addActivity(activity);
        model.addAttribute("success", "Activity added successfully!");
    } catch (Exception e) {
        model.addAttribute("error", "Failed to add activity. Please try again.");
        e.printStackTrace();
    }

    return "redirect:/schoolCoordinator/activityList";
}

    @PostMapping("/deleteActivity")
    public String deleteActivity(@RequestParam("activityId") int activityId, Model model) {
        try {
            activityListDAO.deleteActivity(activityId);
            model.addAttribute("success", "Activity deleted successfully!");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to delete activity. Please try again.");
            e.printStackTrace();
        }

        return "redirect:/schoolCoordinator/activityList";
    }

    // View Content Library
    @RequestMapping("/contentLibrary")
    public String requestContentLibrary(Model model) {
        model.addAttribute("page", "contentLibrary");
        return "schoolCoordinator/contentLibrary";
    }

    // Dashboard
    @RequestMapping("/dashboard")
    public String requestSchoolCoordinatorDashboard(Model model) {
        model.addAttribute("page", "dashboard");
        return "schoolCoordinator/schoolCoordinatorDashboard";
    }

    @GetMapping("/equipments")
    public String requestEquipmentList(
            @RequestParam(value = "sort", required = false) String sort,
            Model model) {
    
        model.addAttribute("page", "equipments"); // This is important
        List<EquipmentRequest> equipmentRequests = equipmentRequestDAO.getAllRequests();
    
        // Sorting logic
        if ("urgency".equalsIgnoreCase(sort)) {
            Map<String, Integer> urgencyOrder = Map.of("High", 1, "Medium", 2, "Low", 3);
            equipmentRequests.sort(Comparator.comparing(req -> urgencyOrder.getOrDefault(req.getUrgencyLevel(), Integer.MAX_VALUE)));
        } else if ("status".equalsIgnoreCase(sort)) {
            Map<String, Integer> statusOrder = Map.of("Pending", 1, "Accepted", 2, "Rejected", 3);
            equipmentRequests.sort(Comparator.comparing(req -> statusOrder.getOrDefault(req.getStatus(), Integer.MAX_VALUE)));
        }
    
        model.addAttribute("equipmentRequests", equipmentRequests);
        return "schoolCoordinator/equipments";
    }
    

    // Request Equipment Form
    @GetMapping("/requestEquipment")
    public String requestEquipmentForm(Model model) {
        model.addAttribute("page", "requestEquipment");
        return "schoolCoordinator/requestEquipment";
    }

    @PostMapping("/submitEquipmentRequest")
    public String submitEquipmentRequest(
            @RequestParam("equipmentName") String equipmentName,
            @RequestParam("quantity") int quantity,
            @RequestParam("requestStartDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate requestStartDate,
            @RequestParam("requestEndDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate requestEndDate,
            @RequestParam("urgencyLevel") String urgencyLevel,
            @RequestParam("resourceDescription") String resourceDescription,
            Model model) {
    
        EquipmentRequest request = new EquipmentRequest(
                0, // Placeholder for ID
                equipmentName,
                quantity,
                requestStartDate,
                requestEndDate,
                urgencyLevel,
                resourceDescription,
                "Pending");
    
        try {
            System.out.println("Submitting request: " + request);
            equipmentRequestDAO.addRequest(request);
            model.addAttribute("success", "Request submitted successfully!");
        } catch (IllegalArgumentException e) {
            System.out.println("Validation error: " + e.getMessage());
            model.addAttribute("error", e.getMessage());
            return "schoolCoordinator/requestEquipment";
        } catch (Exception e) {
            System.out.println("Unexpected error: " + e.getMessage());
            model.addAttribute("error", "An unexpected error occurred while submitting the request.");
            e.printStackTrace();
            return "schoolCoordinator/requestEquipment";
        }
    
        return "redirect:/schoolCoordinator/equipments";
    }
    
    @RequestMapping("/version")
    public String requestVersionPage(Model model) {
        model.addAttribute("page", "version");
        List<VersionUpdateRequest> versionRequests = versionUpdateRequestDAO.getAllRequests();
        model.addAttribute("versionRequests", versionRequests);
        return "schoolCoordinator/version";
    }

        // Upgrade Version Page
        @RequestMapping("/upgradeVersion")
        public String requestUpgradeVersion(Model model) {
            model.addAttribute("page", "upgradeVersion");
            return "schoolCoordinator/upgradeVersion";
        }

    // Submit Version Upgrade Request
    @PostMapping("/submitVersionRequest")
    public String submitVersionRequest(
            @RequestParam("versionName") String versionName,
            @RequestParam("coordinatorName") String coordinatorName,
            @RequestParam("requestDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate requestDate,
            @RequestParam("versionDescription") String versionDescription,
            Model model) {

        VersionUpdateRequest versionRequest = new VersionUpdateRequest(
                0, // Placeholder for ID
                "SMK Batu Pahat Best Food", // Default school name
                versionName,
                coordinatorName,
                requestDate,
                versionDescription,
                "Pending"
        );

        try {
            versionUpdateRequestDAO.addRequest(versionRequest);
            model.addAttribute("success", "Version upgrade request submitted successfully!");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to submit the version upgrade request.");
            e.printStackTrace();
        }

        return "redirect:/schoolCoordinator/version";
    }
}


