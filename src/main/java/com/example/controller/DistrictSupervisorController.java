package com.example.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.VersionUpdateRequestDAO;
import com.example.model.VersionUpdateRequest;

@Controller
@RequestMapping("/districtSupervisor")
public class DistrictSupervisorController {

    private final VersionUpdateRequestDAO versionUpdateRequestDAO;

    public DistrictSupervisorController() {
        this.versionUpdateRequestDAO = new VersionUpdateRequestDAO();
    }

    // View Version Approval Page
    @RequestMapping("/versionApproval")
    public String requestVersionApproval(Model model) {
        List<VersionUpdateRequest> pendingRequests = versionUpdateRequestDAO.getAllRequests();
        model.addAttribute("pendingRequests", pendingRequests);
        return "districtSupervisor/versionApproval";
    }

    // Approve a Version Update Request
    @PostMapping("/approveVersionRequest")
    public String approveVersionRequest(@RequestParam("id") int id) {
        versionUpdateRequestDAO.updateStatus(id, "Approved");
        return "redirect:/districtSupervisor/versionApproval";
    }

    // Reject a Version Update Request
    @PostMapping("/rejectVersionRequest")
    public String rejectVersionRequest(@RequestParam("id") int id) {
        versionUpdateRequestDAO.updateStatus(id, "Rejected");
        return "redirect:/districtSupervisor/versionApproval";
    }

    // Other methods remain unchanged
    @RequestMapping("/schoolList")
    public String requestSchoolList() {
        return "districtSupervisor/schoolList";
    }

    @RequestMapping("/dashboard")
    public String requestDistrictSupervisorDashboard() {
        return "districtSupervisor/districtSupervisorDashboard";
    }
}
