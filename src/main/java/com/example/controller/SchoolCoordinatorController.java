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

import com.example.dao.CrewApplicationDAO;
import com.example.dao.EquipmentRequestDAO;
import com.example.model.CrewApplication;
import com.example.model.EquipmentRequest;

@Controller
@RequestMapping("/schoolCoordinator")
public class SchoolCoordinatorController {

    private final EquipmentRequestDAO equipmentRequestDAO;
    private final CrewApplicationDAO crewApplicationDAO;

    public static final String STATUS_PENDING = "Pending";
    public static final String STATUS_ACCEPTED = "Accepted";
    public static final String STATUS_REJECTED = "Rejected";
    public static final String STATUS_REMOVED = "Removed";

    public SchoolCoordinatorController() {
        this.equipmentRequestDAO = new EquipmentRequestDAO();
        this.crewApplicationDAO = new CrewApplicationDAO();
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

    // View Activity List
    @RequestMapping("/activityList")
    public String requestActivityList(Model model) {
        model.addAttribute("page", "activityList");
        return "schoolCoordinator/activityList";
    }

    // Add Activity
    @RequestMapping("/addActivity")
    public String requestAddActivity(Model model) {
        model.addAttribute("page", "addActivity");
        return "schoolCoordinator/addActivity";
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

    // Submit Equipment Request
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
                STATUS_PENDING);

        try {
            equipmentRequestDAO.addRequest(request);
            model.addAttribute("success", "Request submitted successfully!");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to submit the request.");
            e.printStackTrace();
            return "schoolCoordinator/requestEquipment";
        }

        return "redirect:/schoolCoordinator/equipments";
    }

    // View Version Page
    @RequestMapping("/version")
    public String requestVersion(Model model) {
        model.addAttribute("page", "version");
        return "schoolCoordinator/version";
    }

    // Upgrade Version Page
    @RequestMapping("/upgradeVersion")
    public String requestUpgradeVersion(Model model) {
        model.addAttribute("page", "upgradeVersion");
        return "schoolCoordinator/upgradeVersion";
    }
}
