package com.example.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping ;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.EquipmentRequest;

@Controller
@RequestMapping("/schoolCoordinator")
public class SchoolCoordinatorController {
    
    @RequestMapping("/activityList")
    public ModelAndView requestActivityList() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/activityList");
        return mv;
    }
    
    @RequestMapping("/addActivity")
    public ModelAndView requestAddActivity() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/addActivity");
        return mv;
    }
    
    @RequestMapping("/contentLibrary")
    public ModelAndView requestContentLibrary() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/contentLibrary");
        return mv;
    }

    @RequestMapping("/crewApplicationList")
    public ModelAndView requestCrewApplicationList() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/crewApplicationList");
        return mv;
    }
    
    @RequestMapping("/crewList")
    public ModelAndView requestCrewList() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/crewList");
        return mv;
    }
    
    private final List<EquipmentRequest> equipmentRequests = new ArrayList<>();

    @RequestMapping("/equipments")
    public ModelAndView showEquipmentList() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/equipments");
        mv.addObject("equipmentRequests", equipmentRequests);
        return mv;
    }

    @RequestMapping("/requestEquipment")
    public ModelAndView requestEquipmentForm() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/requestEquipment");
        return mv;
    }
    
    @RequestMapping("/dashboard")
    public ModelAndView requestDashboard() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/schoolCoordinatorDashboard");
        return mv;
    }    

    @PostMapping("/submitEquipmentRequest")
    public String submitEquipmentRequest(@RequestParam("equipmentName") String equipmentName, @RequestParam("quantitiy") int quantity,
                @RequestParam("requestStartDate") LocalDate requestStartDate, @RequestParam("requestEndDate") LocalDate requestEndDate,
                @RequestParam("urgencyLevel") String urgencyLevel, @RequestParam("resourceDescription") String resourceDescription ) 
    {
        EquipmentRequest request = new EquipmentRequest(equipmentName,quantity,requestStartDate,requestEndDate,urgencyLevel,resourceDescription);
        equipmentRequests.add(request);
        return "redirect:/schoolCoordinator/equipments";
    }
}
