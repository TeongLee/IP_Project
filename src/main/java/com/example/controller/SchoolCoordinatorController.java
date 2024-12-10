package com.example.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
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

    @RequestMapping("/version")
    public ModelAndView requestVersion() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/version");
        return mv;
    }

    @RequestMapping("/upgradeVersion")
    public ModelAndView requestUpgradeVersion() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/upgradeVersion");
        return mv;
    }

    @RequestMapping("/dashboard")
    public ModelAndView requestSchoolCoordinatorDashboard() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/schoolCoordinatorDashboard");
        return mv;
    }

    private final List<EquipmentRequest> equipmentRequests = new ArrayList<>();
    
    // Constructor or initializer block to add static data
    {
        equipmentRequests.add(0,new EquipmentRequest("Projector", 3, LocalDate.of(2024, 11, 1), LocalDate.of(2024, 11, 5), "High", "A projector for presentations", "Accept"));
        equipmentRequests.add(0,new EquipmentRequest("Microphone", 5, LocalDate.of(2024, 11, 1), LocalDate.of(2024, 11, 5), "Medium", "Microphones for an event", "Reject"));
        equipmentRequests.add(0,new EquipmentRequest("Speakers", 4, LocalDate.of(2024, 11, 1), LocalDate.of(2024, 11, 5), "High", "Speakers for sound system", "Reject"));
        equipmentRequests.add(0,new EquipmentRequest("Sound Mixer", 1, LocalDate.of(2024, 11, 1), LocalDate.of(2024, 11, 5), "Low", "Sound mixer for the audio setup", "Pending"));
        equipmentRequests.add(0,new EquipmentRequest("Extension Cord", 8, LocalDate.of(2024, 11, 1), LocalDate.of(2024, 11, 5), "Medium", "Extension cords for power supply", "Accept"));
    }

    @RequestMapping("/equipments")
    public ModelAndView requestEquipmentList() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/equipments");
        mv.addObject("equipmentRequests", equipmentRequests);
        return mv;
    }

    @RequestMapping("/requestEquipment")
    public ModelAndView requestEquipmentForm() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/requestEquipment");
        return mv;
    }

    @PostMapping("/submitEquipmentRequest")
    public String submitEquipmentRequest(
            @RequestParam("equipmentName") String equipmentName,
            @RequestParam("quantity") int quantity,
            @RequestParam("requestStartDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate requestStartDate,
            @RequestParam("requestEndDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate requestEndDate,
            @RequestParam("urgencyLevel") String urgencyLevel,
            @RequestParam("resourceDescription") String resourceDescription) {

        EquipmentRequest request = new EquipmentRequest(
                equipmentName, quantity, requestStartDate, requestEndDate, urgencyLevel, resourceDescription, "Pending");

        System.out.println("Submitted Request: " + request);
        equipmentRequests.add(0,request);
        return "redirect:/schoolCoordinator/equipments";
    }

}
