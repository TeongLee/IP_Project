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
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CrewApplicationDAO;
import com.example.dao.EquipmentRequestDAO;
import com.example.model.CrewApplication;
import com.example.model.EquipmentRequest;

@Controller
@RequestMapping("/schoolCoordinator")
public class SchoolCoordinatorController {

    private final EquipmentRequestDAO equipmentRequestDAO;
    private final CrewApplicationDAO crewApplicationDAO;

    public SchoolCoordinatorController() {
        this.equipmentRequestDAO = new EquipmentRequestDAO();
        this.crewApplicationDAO = new CrewApplicationDAO();
    }

    @RequestMapping("/activityList")
    public ModelAndView requestActivityList() {
        return new ModelAndView("schoolCoordinator/activityList");
    }

    @RequestMapping("/addActivity")
    public ModelAndView requestAddActivity() {
        return new ModelAndView("schoolCoordinator/addActivity");
    }

    @RequestMapping("/contentLibrary")
    public ModelAndView requestContentLibrary() {
        return new ModelAndView("schoolCoordinator/contentLibrary");
    }

    @RequestMapping("/crewApplicationList")
    public String viewCrewApplications(Model model) {
        List<CrewApplication> applications = crewApplicationDAO.getPendingApplications();
        model.addAttribute("crewApplications", applications);
        return "schoolCoordinator/crewApplicationList";
    }

    @PostMapping("/approveCrewApplication")
    public String approveCrewApplication(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, "Accepted");
        return "redirect:/schoolCoordinator/crewApplicationList";
    }


    @PostMapping("/rejectCrewApplication")
    public String rejectCrewApplication(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, "Rejected");
        return "redirect:/schoolCoordinator/crewApplicationList";
    }



    @RequestMapping("/crewList")
    public String requestCrewList(Model model) {
        List<CrewApplication> acceptedApplications = crewApplicationDAO.getAcceptedApplications();
        model.addAttribute("crewList", acceptedApplications);
        return "schoolCoordinator/crewList";
    }

    @PostMapping("/removeCrewMember")
        public String removeCrewMember(@RequestParam("id") int id) {
        crewApplicationDAO.updateApplicationStatus(id, "Removed"); // Or handle deletion logic.
        return "redirect:/schoolCoordinator/crewList";
    }

    @RequestMapping("/version")
    public ModelAndView requestVersion() {
        return new ModelAndView("schoolCoordinator/version");
    }

    @RequestMapping("/upgradeVersion")
    public ModelAndView requestUpgradeVersion() {
        return new ModelAndView("schoolCoordinator/upgradeVersion");
    }

    @RequestMapping("/dashboard")
    public ModelAndView requestSchoolCoordinatorDashboard() {
        return new ModelAndView("schoolCoordinator/schoolCoordinatorDashboard");
    }

    @GetMapping("/equipments")
    public String requestEquipmentList(
            @RequestParam(value = "sort", required = false) String sort,
            Model model) {

        List<EquipmentRequest> equipmentRequests = equipmentRequestDAO.getAllRequests();

        if ("urgency".equalsIgnoreCase(sort)) {
            Map<String, Integer> urgencyOrder = Map.of("High", 1, "Medium", 2, "Low", 3);
            equipmentRequests.sort(Comparator.comparing(req -> urgencyOrder.getOrDefault(req.getUrgencyLevel(), Integer.MAX_VALUE)));
        } else if ("status".equalsIgnoreCase(sort)) {
            Map<String, Integer> statusOrder = Map.of("Pending", 1, "Accepted", 2, "Rejected", 3);
            equipmentRequests.sort(Comparator.comparing(req -> statusOrder.getOrDefault(req.getStatus(), Integer.MAX_VALUE)));
        }

        model.addAttribute("equipmentRequests", equipmentRequests);
        model.addAttribute("message", "Equipment list updated successfully!");

        return "schoolCoordinator/equipments";
    }

    @GetMapping("/requestEquipment")
    public String requestEquipmentForm() {
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
            equipmentRequestDAO.addRequest(request);
            model.addAttribute("success", "Request submitted successfully!");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to submit the request.");
            e.printStackTrace();
            return "schoolCoordinator/requestEquipment";
        }

        return "redirect:/schoolCoordinator/equipments";
    }
}
