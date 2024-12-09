package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


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
    
    @RequestMapping("/equipments")
    public ModelAndView requestMethodName() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/equipments");
        return mv;
    }

    @RequestMapping("/requestEquipment")
    public ModelAndView requestEquipment() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/requestEquipment");
        return mv;
    }
    
    @RequestMapping("/dashboard")
    public ModelAndView requestDashboard() {
        ModelAndView mv = new ModelAndView("schoolCoordinator/schoolCoordinatorDashboard");
        return mv;
    }
    
    
}