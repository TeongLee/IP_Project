package com.example.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.EquipmentRequestDAO;
import com.example.dao.InventoryDAO;
import com.example.model.EquipmentRequest;
import com.example.model.Inventory;

@Controller
@RequestMapping("/stateAdmin")
public class StateAdminController {

    private final EquipmentRequestDAO equipmentRequestDAO;
    private final InventoryDAO inventoryDAO;

    public StateAdminController() {
        this.equipmentRequestDAO = new EquipmentRequestDAO();
        this.inventoryDAO = new InventoryDAO();
    }

    @RequestMapping("/allocationApproval")
    public ModelAndView requestAllocationApproval(
            @RequestParam(value = "sort", required = false) String sort,
            @RequestParam(value = "filter", required = false) String filter) {
    
        ModelAndView mv = new ModelAndView("stateAdmin/allocationApproval");
        try {
            // Fetch all requests
            List<EquipmentRequest> equipmentRequests = equipmentRequestDAO.getAllRequests();
    
            // Apply filtering
            if (filter != null && !filter.isEmpty()) {
                String lowerCaseFilter = filter.toLowerCase();
                equipmentRequests = equipmentRequests.stream()
                        .filter(req -> req.getEquipmentName().toLowerCase().contains(lowerCaseFilter))
                        .collect(Collectors.toList());
            }
    
            // Apply sorting
            if ("date".equalsIgnoreCase(sort)) {
                equipmentRequests.sort(Comparator.comparing(EquipmentRequest::getRequestStartDate));
            } else if ("urgency".equalsIgnoreCase(sort)) {
                equipmentRequests.sort(Comparator.comparingInt(EquipmentRequest::getUrgencyLevelOrder).reversed());
            } else if ("status".equalsIgnoreCase(sort)) {
                equipmentRequests.sort(Comparator.comparing(EquipmentRequest::getStatus));
            }
    
            if (equipmentRequests.isEmpty()) {
                mv.addObject("message", "No equipment requests available.");
            } else {
                mv.addObject("equipmentRequests", equipmentRequests);
            }
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("error", "Failed to load equipment requests.");
        }
        return mv;
    }
    @PostMapping("/approveRequest")
public String approveRequest(@RequestParam("id") int id) {
    try {
        EquipmentRequest request = equipmentRequestDAO.getRequestById(id);
        if (request == null) {
            System.out.println("Request with ID " + id + " not found.");
            return "redirect:/stateAdmin/allocationApproval";
        }
        System.out.println("Request fetched successfully: " + request);
        
        // Directly update the status to Approved for now
        equipmentRequestDAO.updateStatus(id, "Approved");
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println("Error approving request ID: " + id);
    }
    return "redirect:/stateAdmin/allocationApproval";
}

    
    @PostMapping("/rejectRequest")
    public String rejectRequest(@RequestParam("id") int id) {
        try {
            EquipmentRequest request = equipmentRequestDAO.getRequestById(id);
            if (request != null) {
                equipmentRequestDAO.updateStatus(id, "Rejected");
            } else {
                System.out.println("Request with ID " + id + " not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error rejecting request ID: " + id);
        }
        return "redirect:/stateAdmin/allocationApproval";
    }

    @RequestMapping("/inventory")
    public ModelAndView requestInventoryList() {
        ModelAndView mv = new ModelAndView("stateAdmin/inventory");
        try {
            List<Inventory> resources = inventoryDAO.getAllResources();
            mv.addObject("resources", resources);
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("error", "Failed to load inventory data.");
        }
        return mv;
    }

    @RequestMapping("/schoolList")
    public ModelAndView requestSchoolList() {
        return new ModelAndView("stateAdmin/schoolList");
    }

    @RequestMapping("/dashboard")
    public ModelAndView requestStateAdminDashboard() {
        return new ModelAndView("stateAdmin/stateAdminDashboard");
    }
}
