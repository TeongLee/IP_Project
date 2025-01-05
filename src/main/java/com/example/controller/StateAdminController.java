package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.EquipmentRequestDAO;
import com.example.model.EquipmentRequest;

@Controller
@RequestMapping("/stateAdmin")
public class StateAdminController {

    private final EquipmentRequestDAO equipmentRequestDAO;

    public StateAdminController() {
        this.equipmentRequestDAO = new EquipmentRequestDAO();
    }

@RequestMapping("/allocationApproval")
public ModelAndView requestAllocationApproval() {
    ModelAndView mv = new ModelAndView("stateAdmin/allocationApproval");
    try {
        List<EquipmentRequest> equipmentRequests = equipmentRequestDAO.getAllRequests();
        if (equipmentRequests.isEmpty()) {
            mv.addObject("message", "No equipment requests available.");
        } else {
            mv.addObject("equipmentRequests", equipmentRequests);
        }
    } catch (Exception e) {
        e.printStackTrace(); // Log the error
        mv.addObject("error", "Failed to load equipment requests.");
        mv.addObject("equipmentRequests", new ArrayList<>()); // Ensure no null values are passed to JSP
    }
    return mv;
}

    @PostMapping("/approveRequest")
    public String approveRequest(@RequestParam("id") int id) {
        try {
            equipmentRequestDAO.updateStatus(id, "Accepted");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/stateAdmin/allocationApproval";
    }

    @PostMapping("/rejectRequest")
    public String rejectRequest(@RequestParam("id") int id) {
        try {
            equipmentRequestDAO.updateStatus(id, "Rejected");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/stateAdmin/allocationApproval";
    }

    

    @RequestMapping("/inventory")
    public ModelAndView requestInventoryList() {
        ModelAndView mv = new ModelAndView("stateAdmin/inventory");
        return mv;
    }

    @RequestMapping("/schoolList")
    public ModelAndView requestSchoolList() {
        ModelAndView mv = new ModelAndView("stateAdmin/schoolList");
        return mv;
    }

    @RequestMapping("/dashboard")
    public ModelAndView requestStateAdminDashboard() {
        ModelAndView mv = new ModelAndView("stateAdmin/stateAdminDashboard");
        return mv;
    }


}
